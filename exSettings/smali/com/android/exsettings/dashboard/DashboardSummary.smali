.class public Lcom/android/exsettings/dashboard/DashboardSummary;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;,
        Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

.field private mCallBack:Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;

.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLte4GEnabler:Lcom/android/exsettings/Lte4GEnabler;

.field private mNfcEnabler:Lcom/android/exsettings/nfc/NfcSwitchEnabler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchView:Landroid/widget/LinearLayout;

.field private mWifiEnabler:Lcom/android/exsettings/WifiSwitchEnabler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/android/exsettings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/dashboard/DashboardSummary$1;-><init>(Lcom/android/exsettings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/exsettings/dashboard/DashboardSummary$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/dashboard/DashboardSummary$2;-><init>(Lcom/android/exsettings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v0, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/exsettings/dashboard/DashboardSummary;Lcom/android/exsettings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/exsettings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/dashboard/DashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/dashboard/DashboardSummary;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->sendRebuildUI()V

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 210
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 212
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040041

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mSearchView:Landroid/widget/LinearLayout;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mCallBack:Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mSearchView:Landroid/widget/LinearLayout;

    invoke-interface {v2, v3}, Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;->setSearView(Landroid/widget/LinearLayout;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mSearchView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v2, p1

    .line 219
    check-cast v2, Lcom/android/exsettings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/exsettings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v9

    .line 222
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 224
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_b

    .line 225
    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/exsettings/dashboard/DashboardCategory;

    .line 227
    .local v10, "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040043

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 230
    .local v13, "categoryView":Landroid/view/View;
    const v2, 0x7f12007d

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 231
    .local v12, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v2, 0x7f12007e

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 236
    .local v11, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v23

    .line 237
    .local v23, "tilesCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 238
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/exsettings/dashboard/DashboardCategory;->getTile(I)Lcom/android/exsettings/dashboard/DashboardTile;

    move-result-object v5

    .line 240
    .local v5, "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    invoke-virtual {v5, v4}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0b7d

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 242
    .local v22, "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/exsettings/Lte4GEnabler;

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/Lte4GEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/exsettings/Lte4GEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/Lte4GEnabler;->isThereSimReady()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v15, 0x1

    .line 247
    .local v15, "enabled":Z
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/exsettings/dashboard/DashboardTileView;->setEnabled(Z)V

    .line 248
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    if-eqz v15, :cond_2

    .line 251
    const v2, 0x7f02013b

    iput v2, v5, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    .line 256
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    .line 299
    .end local v15    # "enabled":Z
    :goto_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/exsettings/dashboard/DashboardTileView;->setTile(Lcom/android/exsettings/dashboard/DashboardTile;)V

    .line 301
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 244
    :cond_1
    const/4 v15, 0x0

    goto :goto_3

    .line 253
    .restart local v15    # "enabled":Z
    :cond_2
    const v2, 0x7f02013c

    iput v2, v5, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    goto :goto_4

    .line 259
    .end local v15    # "enabled":Z
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_3
    invoke-virtual {v5, v4}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0269

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 261
    .restart local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcSwitchEnabler;

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 263
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    goto :goto_5

    .line 267
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_4
    invoke-virtual {v5, v4}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0278

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 269
    .restart local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mWifiEnabler:Lcom/android/exsettings/WifiSwitchEnabler;

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/WifiSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 271
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    goto/16 :goto_5

    .line 273
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_5
    invoke-virtual {v5, v4}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c020e

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 274
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 275
    .restart local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 277
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    goto/16 :goto_5

    .line 281
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_6
    invoke-virtual {v5, v4}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c03ca

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com_android_ota_mtk_unread"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v15, 0x1

    .line 284
    .restart local v15    # "enabled":Z
    :goto_6
    if-eqz v15, :cond_8

    .line 285
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 286
    .restart local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 282
    .end local v15    # "enabled":Z
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_7
    const/4 v15, 0x0

    goto :goto_6

    .line 289
    .restart local v15    # "enabled":Z
    :cond_8
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;ZLandroid/util/AttributeSet;Z)V

    .line 290
    .restart local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageViewWidget()Landroid/widget/ImageView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_5

    .line 295
    .end local v15    # "enabled":Z
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_9
    new-instance v22, Lcom/android/exsettings/dashboard/DashboardTileView;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 296
    .restart local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/exsettings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 305
    .end local v5    # "tile":Lcom/android/exsettings/dashboard/DashboardTile;
    .end local v22    # "tileView":Lcom/android/exsettings/dashboard/DashboardTileView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 307
    .end local v10    # "category":Lcom/android/exsettings/dashboard/DashboardCategory;
    .end local v11    # "categoryContent":Landroid/view/ViewGroup;
    .end local v12    # "categoryLabel":Landroid/widget/TextView;
    .end local v13    # "categoryView":Landroid/view/View;
    .end local v18    # "i":I
    .end local v23    # "tilesCount":I
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 308
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 376
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "tileImageWidget"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 364
    iget v0, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    if-lez v0, :cond_0

    .line 365
    iget v0, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    return-void

    .line 367
    :cond_0
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "mSwitch"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 351
    iget v0, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    if-lez v0, :cond_0

    .line 352
    iget v0, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void

    .line 354
    :cond_0
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/exsettings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/exsettings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 314
    iget-object v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 318
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 320
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 321
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 323
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 325
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/exsettings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p3, p2}, Lcom/android/exsettings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 340
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 341
    const/4 v4, 0x0

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :goto_1
    return-void

    .line 326
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 331
    iget v4, p3, Lcom/android/exsettings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 344
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 326
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x23

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 389
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;

    move-object v2, v0

    iput-object v2, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mCallBack:Lcom/android/exsettings/dashboard/DashboardSummary$OnSearViewCallBack;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    return-void

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnFolderListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 134
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c097b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/exsettings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 190
    new-instance v1, Lcom/android/exsettings/Lte4GEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/exsettings/Lte4GEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/exsettings/Lte4GEnabler;

    .line 192
    new-instance v1, Lcom/android/exsettings/nfc/NfcSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcSwitchEnabler;

    .line 194
    new-instance v1, Lcom/android/exsettings/WifiSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/exsettings/WifiSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mWifiEnabler:Lcom/android/exsettings/WifiSwitchEnabler;

    .line 195
    new-instance v1, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    .line 197
    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f12007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 200
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/exsettings/Lte4GEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/Lte4GEnabler;->pause()V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->pause()V

    .line 177
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mWifiEnabler:Lcom/android/exsettings/WifiSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/WifiSwitchEnabler;->pause()V

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->pause()V

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 147
    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/exsettings/Lte4GEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/Lte4GEnabler;->resume()V

    .line 149
    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/nfc/NfcSwitchEnabler;->resume()V

    .line 151
    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mWifiEnabler:Lcom/android/exsettings/WifiSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/WifiSwitchEnabler;->resume()V

    .line 152
    iget-object v2, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/exsettings/bluetooth/BluetoothSwitchEnabler;->resume()V

    .line 154
    invoke-direct {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/exsettings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/exsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method
