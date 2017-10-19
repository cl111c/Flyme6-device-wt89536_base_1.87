.class public final Lcom/android/exsettings/bluetooth/BluetoothSettings;
.super Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

.field private mBtSearchDev:Landroid/widget/Button;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 690
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothSettings$5;

    invoke-direct {v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$5;-><init>()V

    sput-object v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 158
    return-void
.end method

.method private BTbtnFunction()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 725
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v6, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 729
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    move v0, v4

    .line 730
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 731
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_3

    const v2, 0x7f0c0220

    .line 733
    .local v2, "textId":I
    :goto_2
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(I)V

    .line 735
    if-eqz v1, :cond_4

    .line 736
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    const v7, -0xc3c3c4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 741
    :goto_3
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 742
    if-eqz v0, :cond_6

    move v3, v5

    .line 743
    .local v3, "visibility":I
    :goto_5
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    .end local v3    # "visibility":I
    :cond_2
    move v0, v5

    .line 729
    goto :goto_1

    .line 731
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v1    # "isDiscovering":Z
    :cond_3
    const v2, 0x7f0c021f

    goto :goto_2

    .line 738
    .restart local v2    # "textId":I
    :cond_4
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    :cond_5
    move v4, v5

    .line 741
    goto :goto_4

    .line 742
    :cond_6
    const/4 v3, 0x4

    goto :goto_5
.end method

.method static synthetic access$002(Lcom/android/exsettings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/bluetooth/BluetoothSettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->startScanning()V

    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 434
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 436
    invoke-virtual {p0, p3}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 438
    if-eqz p4, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 441
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 442
    return-void
.end method

.method private setOffMessage()V
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 571
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v8, :cond_0

    .line 622
    :goto_0
    return-void

    .line 574
    :cond_0
    const v8, 0x7f0c0236

    invoke-virtual {p0, v8}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 576
    .local v2, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 577
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v8, "ble_scan_always_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v0, v6

    .line 580
    .local v0, "bleScanningMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 582
    .local v3, "config":Landroid/content/res/Configuration;
    if-nez v0, :cond_4

    .line 584
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 588
    iget v8, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 589
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x51

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 590
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v8, 0x7f020023

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 616
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 617
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 618
    .local v1, "boldSpan":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0d0066

    invoke-direct {v6, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-interface {v1, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .end local v0    # "bleScanningMode":Z
    .end local v1    # "boldSpan":Landroid/text/Spannable;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_2
    move v0, v7

    .line 577
    goto :goto_1

    .line 591
    .restart local v0    # "bleScanningMode":Z
    .restart local v3    # "config":Landroid/content/res/Configuration;
    :cond_3
    iget v8, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_1

    .line 592
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 593
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v8, 0x7f020022

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 598
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .local v4, "contentBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 602
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 603
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 604
    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const v6, 0x7f0c0237

    invoke-virtual {p0, v6}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v8, Lcom/android/exsettings/bluetooth/BluetoothSettings$3;

    invoke-direct {v8, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    invoke-static {v6, v4, v8}, Lcom/android/exsettings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/exsettings/LinkifyUtils$OnClickListener;)Z

    goto :goto_2
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 402
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 408
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 417
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 422
    :goto_1
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 423
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0

    .line 420
    :cond_3
    const-string v0, "BluetoothSettings"

    const-string v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContent(I)V
    .locals 9
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 446
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 448
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 559
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 560
    if-eqz v0, :cond_1

    .line 561
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 566
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->BTbtnFunction()V

    .line 568
    :cond_2
    :goto_1
    return-void

    .line 450
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 451
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 452
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 455
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_3

    .line 456
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 459
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f0200f8

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 461
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 462
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 463
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 467
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 470
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    const v0, 0x7f0c00c1

    .line 472
    goto :goto_0

    .line 476
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_a

    .line 477
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 481
    :goto_2
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0c022b

    sget-object v6, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 484
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 486
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_5

    if-gtz v2, :cond_6

    .line 487
    :cond_5
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 491
    :cond_6
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_b

    .line 492
    new-instance v4, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 493
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 497
    :goto_3
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0c022c

    sget-object v6, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 501
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 502
    .local v1, "numberOfAvailableDevices":I
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v4, :cond_7

    .line 503
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 507
    :cond_7
    iget-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_8

    .line 508
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 524
    :cond_8
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 528
    iget-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_9

    .line 530
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 531
    iput-boolean v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 534
    :cond_9
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->BTbtnFunction()V

    goto/16 :goto_1

    .line 479
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_a
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 495
    .restart local v2    # "numberOfPairedDevices":I
    :cond_b
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 538
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0c00da

    .line 539
    goto/16 :goto_0

    .line 542
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 544
    iget-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_c

    .line 545
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 547
    :cond_c
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    const v0, 0x7f0c00c1

    goto/16 :goto_0

    .line 553
    :pswitch_3
    const v0, 0x7f0c00d9

    .line 554
    iput-boolean v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 277
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 280
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 687
    const v0, 0x7f0c0988

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 678
    invoke-virtual {p1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 679
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 167
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 170
    iput-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x1020004

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 178
    .local v2, "config":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 179
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x51

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 186
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 188
    new-instance v3, Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-direct {v3, v0, v4}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    .line 189
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v3}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 191
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1201ed

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "bb":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const v3, 0x7f1201ee

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    .line 194
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    new-instance v4, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v4, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void

    .end local v0    # "activity":Lcom/android/exsettings/SettingsActivity;
    .end local v1    # "bb":Landroid/view/View;
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_1
    move v3, v5

    .line 169
    goto :goto_0

    .line 180
    .restart local v2    # "config":Landroid/content/res/Configuration;
    :cond_2
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    .line 181
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 626
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 629
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 631
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 632
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0b00a2

    .line 207
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 212
    .local v1, "activity":Landroid/app/Activity;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 215
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v5, 0x7f020023

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 217
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 219
    .local v3, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 221
    .local v2, "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 237
    .end local v2    # "switchBarHeight":I
    .end local v3    # "titleTextSize":F
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v5, 0x7f020022

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 228
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 230
    .restart local v3    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 232
    .restart local v2    # "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 338
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 343
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 344
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_3

    const v2, 0x7f0c0220

    .line 347
    .local v2, "textId":I
    :goto_2
    if-eqz v1, :cond_4

    .line 348
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    const v5, -0xc3c3c4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 362
    :goto_3
    const v4, 0x7f0c00bd

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020030

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 368
    const/4 v4, 0x3

    const v5, 0x7f0c00ce

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02002f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 373
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    :cond_2
    move v0, v3

    .line 342
    goto :goto_1

    .line 344
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v1    # "isDiscovering":Z
    :cond_3
    const v2, 0x7f0c021f

    goto :goto_2

    .line 350
    .restart local v2    # "textId":I
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 271
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBtSearchDev:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 273
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 649
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 650
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 429
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V

    .line 430
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 398
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 380
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 382
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 388
    new-instance v2, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->pause()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 324
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const v1, 0x7f0c0d44

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SwitchBar;->setTextView(I)V

    .line 292
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/bluetooth/BluetoothDiscoverableEnabler;->resume(Landroid/content/Context;)V

    .line 299
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 304
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 312
    :cond_2
    :goto_0
    return-void

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->updateContent(I)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 636
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 638
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 641
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->BTbtnFunction()V

    .line 643
    :cond_0
    return-void
.end method
