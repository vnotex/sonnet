/*  SPDX-License-Identifier: LGPL-2.0-or-later

    Copyright (C) 2019 Christoph Cullmann <cullmann@kde.org>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
*/

#include "ispellcheckerdict.h"
#include "ispellcheckerdebug.h"

using namespace Sonnet;

ISpellCheckerDict::ISpellCheckerDict(ISpellCheckerFactory *spellCheckerFactory, const QString &language)
    : SpellerPlugin(language)
{
    if (!SUCCEEDED(spellCheckerFactory->CreateSpellChecker(language.toStdWString().c_str(), &m_spellChecker))) {
        m_spellChecker = nullptr;
    }
}

ISpellCheckerDict::~ISpellCheckerDict()
{
    // release com if needed
    if (m_spellChecker) {
        m_spellChecker->Release();
    }
}

bool ISpellCheckerDict::isCorrect(const QString &word) const
{
    return false;
}

QStringList ISpellCheckerDict::suggest(const QString &word) const
{
     return QStringList();

}

bool ISpellCheckerDict::storeReplacement(const QString &bad, const QString &good)
{
    Q_UNUSED(bad);
    Q_UNUSED(good);
    qCDebug(SONNET_ISPELLCHECKER) << "ISpellCheckerDict::storeReplacement not implemented";
    return false;
}

bool ISpellCheckerDict::addToPersonal(const QString &word)
{
    Q_UNUSED(word);
    qCDebug(SONNET_ISPELLCHECKER) << "ISpellCheckerDict::storeReplacement not implemented";
    return false;
}

bool ISpellCheckerDict::addToSession(const QString &word)
{
    Q_UNUSED(word);
    qCDebug(SONNET_ISPELLCHECKER) << "ISpellCheckerDict::storeReplacement not implemented";
    return false;
}
