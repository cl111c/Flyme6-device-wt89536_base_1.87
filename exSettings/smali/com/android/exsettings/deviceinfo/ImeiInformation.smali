.class public Lcom/android/exsettings/deviceinfo/ImeiInformation;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "ImeiInformation.java"


# instance fields
.field private isMultiSIM:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    return-void
.end method

.method private initPreferenceScreen(I)V
    .locals 2
    .param p1, "slotCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 60
    if-le p1, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 61
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 62
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 63
    invoke-direct {p0, v0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 64
    invoke-direct {p0, v0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "slotId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    .restart local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 173
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 132
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 133
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 134
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 135
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v3, p1}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->updateTitle(Landroid/preference/Preference;I)V

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/16 v7, 0xe

    .line 69
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 70
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v3, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v3}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    .line 71
    .local v3, "mConfigResUtil":Lcom/android/internal/telephony/ConfigResourceUtil;
    const/4 v2, 0x0

    .line 73
    .local v2, "imeiStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 75
    .local v1, "enable14DigitImei":Z
    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "config_enable_display_14digit_imei"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    if-eqz v4, :cond_2

    .line 82
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 85
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_0
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 89
    const-string v5, "meid_number"

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v5, "min_number"

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    const-string v5, "min_number"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f0c03e1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 96
    :cond_1
    const-string v5, "prl_version"

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "imei_sv"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 99
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 101
    const-string v5, "icc_id"

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "imei"

    invoke-direct {p0, v5, v2}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    :goto_1
    return-void

    .line 106
    :cond_3
    const-string v5, "imei"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 107
    const-string v5, "icc_id"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 112
    .local v0, "displayIccId":Z
    if-eqz v0, :cond_5

    .line 113
    const-string v5, "icc_id"

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_2
    const-string v5, "imei"

    invoke-direct {p0, v5, v2}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "imei_sv"

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "prl_version"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 122
    const-string v5, "meid_number"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 123
    const-string v5, "min_number"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_5
    const-string v5, "icc_id"

    invoke-direct {p0, v5}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    .end local v0    # "displayIccId":Z
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 158
    .local v0, "preference":Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 162
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    return-void
.end method

.method private updateTitle(Landroid/preference/Preference;I)V
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/exsettings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0abd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x29

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 52
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    .line 55
    return-void
.end method
