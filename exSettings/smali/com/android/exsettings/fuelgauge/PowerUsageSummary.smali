.class public Lcom/android/exsettings/fuelgauge/PowerUsageSummary;
.super Lcom/android/exsettings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;

.field private mStatsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 410
    new-instance v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/exsettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0c06dc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 181
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    return-void
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 201
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 203
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_a

    .line 204
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 205
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    .line 206
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 210
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 211
    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 216
    :cond_0
    invoke-static {v13}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 221
    const/16 v13, 0x3e8

    .line 224
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 226
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/exsettings/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/exsettings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 228
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 229
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 230
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 231
    move-object v15, v10

    .line 234
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 235
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 237
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 240
    .restart local v7    # "index":I
    .restart local v13    # "realUid":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 241
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 242
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 244
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 247
    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 249
    .local v4, "existingPackageLen":I
    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 251
    .local v8, "newPackageLen":I
    :goto_3
    if-lez v8, :cond_3

    .line 252
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 253
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 254
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    .line 247
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 249
    .restart local v4    # "existingPackageLen":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 263
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 268
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    .line 269
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 273
    :cond_b
    new-instance v17, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;

    invoke-direct/range {v17 .. v17}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    return-object v14
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 185
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 189
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f0c098d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 88
    const-string v0, "battery_history"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;

    .line 89
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 138
    const/4 v1, 0x3

    const v2, 0x7f0c073d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 141
    const/4 v1, 0x4

    const v2, 0x7f0c0b11

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 142
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 116
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 153
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 155
    :pswitch_1
    iget v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 161
    const/4 v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 163
    :pswitch_2
    const-class v1, Lcom/android/exsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c073d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 165
    const/4 v1, 0x1

    goto :goto_0

    .line 167
    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v3, Lcom/android/exsettings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-class v1, Lcom/android/exsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    invoke-super {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onPause()V

    .line 108
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 120
    instance-of v2, p2, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 127
    :goto_0
    return v2

    :cond_0
    move-object v1, p2

    .line 123
    check-cast v1, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;

    .line 124
    .local v1, "pgp":Lcom/android/exsettings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v1}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/exsettings/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 125
    .local v0, "entry":Lcom/android/exsettings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/SettingsActivity;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/exsettings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/exsettings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/exsettings/fuelgauge/BatteryEntry;Z)V

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 101
    return-void
.end method

.method protected refreshStats()V
    .locals 34

    .prologue
    .line 283
    invoke-super/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 287
    const/4 v4, 0x0

    .line 289
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v18

    .line 290
    .local v18, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v21

    .line 291
    .local v21, "stats":Landroid/os/BatteryStats;
    const-string v27, "screen.full"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 293
    .local v6, "averagePower":D
    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    .line 294
    .local v26, "value":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v27

    const v28, 0x1010429

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 297
    .local v8, "colorControl":I
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpl-double v27, v6, v28

    if-gez v27, :cond_2

    .line 370
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 374
    :cond_1
    invoke-static {}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 375
    return-void

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    .line 301
    .local v24, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v10

    .line 303
    .local v10, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .line 304
    .local v13, "numSippers":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v13, :cond_0

    .line 305
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    .line 306
    .local v20, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide v30, 0x40ac200000000000L    # 3600.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v27, v28, v30

    if-gez v27, :cond_5

    .line 304
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 301
    .end local v10    # "dischargeAmount":I
    .end local v12    # "i":I
    .end local v13    # "numSippers":I
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 309
    .restart local v10    # "dischargeAmount":I
    .restart local v12    # "i":I
    .restart local v13    # "numSippers":I
    .restart local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v22

    .line 310
    .local v22, "totalPower":D
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    div-double v28, v28, v22

    int-to-double v0, v10

    move-wide/from16 v30, v0

    mul-double v16, v28, v30

    .line 312
    .local v16, "percentOfTotal":D
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v16

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 315
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 318
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    div-double v30, v30, v32

    cmpg-double v27, v28, v30

    if-ltz v27, :cond_3

    .line 321
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 324
    const-string v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 328
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 331
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    cmpg-double v27, v28, v30

    if-ltz v27, :cond_3

    .line 334
    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 337
    const-string v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 341
    :cond_7
    new-instance v25, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 342
    .local v25, "userHandle":Landroid/os/UserHandle;
    new-instance v11, Lcom/android/exsettings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/exsettings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 343
    .local v11, "entry":Lcom/android/exsettings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 345
    .local v5, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 347
    .local v9, "contentDescription":Ljava/lang/CharSequence;
    new-instance v19, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5, v9, v11}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/exsettings/fuelgauge/BatteryEntry;)V

    .line 350
    .local v19, "pref":Lcom/android/exsettings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v30

    div-double v14, v28, v30

    .line 352
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 353
    invoke-virtual {v11}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    add-int/lit8 v27, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 355
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 356
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 357
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 359
    :cond_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    if-nez v27, :cond_a

    :cond_9
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 361
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 363
    :cond_a
    const/4 v4, 0x1

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v27

    const/16 v28, 0xb

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    goto/16 :goto_0
.end method
