.class public Lcom/android/exsettings/DateTimeSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAutoTimePref:Landroid/preference/SwitchPreference;

.field private mAutoTimeZonePref:Landroid/preference/SwitchPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 415
    new-instance v0, Lcom/android/exsettings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DateTimeSettings$1;-><init>(Lcom/android/exsettings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 306
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 307
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 308
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 309
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 310
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 311
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initUI()V
    .locals 18

    .prologue
    .line 100
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v8

    .line 101
    .local v8, "autoTimeEnabled":Z
    const-string v1, "auto_time_zone"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v9

    .line 103
    .local v9, "autoTimeZoneEnabled":Z
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    .line 105
    const-string v1, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 107
    .local v12, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 115
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 116
    .local v16, "intent":Landroid/content/Intent;
    const-string v1, "firstRun"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 118
    .local v17, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    const-string v1, "auto_zone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v17, :cond_2

    .line 125
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    const/4 v9, 0x0

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 130
    const-string v1, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 131
    const-string v1, "24 hour"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 132
    const-string v1, "timezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 133
    const-string v1, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 135
    const-string v1, "date_format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 137
    if-eqz v17, :cond_3

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, "dateFormats":[Ljava/lang/String;
    array-length v1, v11

    new-array v14, v1, [Ljava/lang/String;

    .line 145
    .local v14, "formattedDates":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "currentFormat":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 149
    const-string v10, ""

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 155
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v1, v14

    if-ge v15, v1, :cond_6

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v11, v15

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "formatted":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0d3f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    .line 155
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 164
    :cond_5
    aput-object v13, v14, v15

    goto :goto_1

    .line 168
    .end local v13    # "formatted":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v8, :cond_7

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v8, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v9, :cond_9

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    return-void

    .line 172
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 173
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 174
    :cond_9
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    return-void

    .line 375
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 391
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 393
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 396
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 397
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 399
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 404
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 405
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 406
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 407
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 408
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 410
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 411
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 413
    :cond_0
    return-void
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x26

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 360
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/DateTimeSettings;->initUI()V

    .line 97
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 280
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 282
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 288
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 291
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    move-object v0, v1

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {v0, p2, p3, p4}, Lcom/android/exsettings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/exsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 199
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 202
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 341
    iget-object v1, p0, Lcom/android/exsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 342
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DateTimeSettings;->showDialog(I)V

    .line 353
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 345
    invoke-virtual {p0, v2}, Lcom/android/exsettings/DateTimeSettings;->removeDialog(I)V

    .line 346
    invoke-virtual {p0, v2}, Lcom/android/exsettings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/exsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 349
    .local v0, "is24Hour":Z
    invoke-direct {p0, v0}, Lcom/android/exsettings/DateTimeSettings;->set24Hour(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 351
    invoke-direct {p0, v0}, Lcom/android/exsettings/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/exsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/exsettings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    const-string v3, "date_format"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0d40

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 275
    .end local v2    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v3, "auto_time"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 264
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 265
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    iget-object v6, p0, Lcom/android/exsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 268
    iget-object v3, p0, Lcom/android/exsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 265
    goto :goto_1

    :cond_3
    move v3, v5

    .line 267
    goto :goto_2

    :cond_4
    move v4, v5

    .line 268
    goto :goto_3

    .line 269
    .end local v0    # "autoEnabled":Z
    :cond_5
    const-string v3, "auto_zone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 271
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    if-eqz v1, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    iget-object v3, p0, Lcom/android/exsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_7

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v3, v5

    .line 271
    goto :goto_4

    :cond_7
    move v4, v5

    .line 273
    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 244
    invoke-static {v0, p2, p3}, Lcom/android/exsettings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/exsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 251
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 207
    .local v9, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 208
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 211
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 223
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exsettingslib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method
