/*
 * kspell_hunspellclient.h
 *
 * SPDX-FileCopyrightText: 2009 Montel Laurent <montel@kde.org>
 *
 * SPDX-License-Identifier: LGPL-2.1-or-later
 */
#ifndef KSPELL_HUNSPELLCLIENT_H
#define KSPELL_HUNSPELLCLIENT_H

#include "client_p.h"
#include <QMap>
#include <QStringList>

namespace Sonnet
{
class SpellerPlugin;
}
using Sonnet::SpellerPlugin;

class HunspellClient : public Sonnet::Client
{
    Q_OBJECT
    Q_INTERFACES(Sonnet::Client)
    Q_PLUGIN_METADATA(IID "org.kde.Sonnet.HunspellClient")

public:
    explicit HunspellClient(QObject *parent = nullptr);
    ~HunspellClient() override;

    int reliability() const override
    {
        return 40;
    }

    SpellerPlugin *createSpeller(const QString &language) override;

    QStringList languages() const override;

    QString name() const override
    {
        return QStringLiteral("Hunspell");
    }

    static void addDictionaryCustomSearchPaths(const QStringList &p_dirs);

private:
    QMap<QString, QString> m_languagePaths;

    static QStringList s_dictionarySearchPaths;
};

#endif
