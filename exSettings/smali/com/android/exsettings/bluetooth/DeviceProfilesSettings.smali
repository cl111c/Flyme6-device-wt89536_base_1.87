.class public final Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;
.super Landroid/app/DialogFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/view/ViewGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileLabel:Landroid/widget/TextView;

.field private mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Landroid/widget/CheckBox;
    .param p2, "x2"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 12

    .prologue
    .line 178
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 181
    .local v7, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    instance-of v9, v7, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-nez v9, :cond_0

    instance-of v9, v7, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-nez v9, :cond_0

    .line 183
    invoke-direct {p0, v7}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v6

    .line 184
    .local v6, "pref":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 188
    .end local v6    # "pref":Landroid/widget/CheckBox;
    .end local v7    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v4

    .line 189
    .local v4, "pbapPermission":I
    const-string v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v4, :cond_2

    .line 192
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    move-result-object v8

    .line 193
    .local v8, "psp":Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    invoke-direct {p0, v8}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v5

    .line 194
    .local v5, "pbapPref":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    .end local v5    # "pbapPref":Landroid/widget/CheckBox;
    .end local v8    # "psp":Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/exsettingslib/bluetooth/MapProfile;

    move-result-object v3

    .line 198
    .local v3, "mapProfile":Lcom/android/exsettingslib/bluetooth/MapProfile;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    .line 199
    .local v1, "mapPermission":I
    const-string v9, "DeviceProfilesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v1, :cond_3

    .line 201
    invoke-direct {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 202
    .local v2, "mapPreference":Landroid/widget/CheckBox;
    iget-object v9, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    .end local v2    # "mapPreference":Landroid/widget/CheckBox;
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 206
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 286
    .local v0, "device":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    const v6, 0x7f0c00c8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "profileName":Ljava/lang/String;
    const v6, 0x7f0c00c5

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "title":Ljava/lang/String;
    const v6, 0x7f0c00c6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 316
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/exsettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 320
    .end local v1    # "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 230
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "pref":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 233
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 237
    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 386
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-object v2

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private onProfileClicked(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v2, 0x1

    .line 252
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 254
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 280
    :goto_0
    return-void

    .line 259
    :cond_0
    instance-of v1, p1, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 262
    :cond_1
    instance-of v1, p1, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 264
    invoke-direct {p0, p2, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    instance-of v1, p1, Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 278
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 272
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_1

    .line 275
    :cond_4
    invoke-interface {p1, v0, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 276
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f120028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 329
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 334
    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .param p1, "profilePref"    # Landroid/widget/CheckBox;
    .param p2, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 363
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 366
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 368
    instance-of v1, p2, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 383
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 366
    goto :goto_0

    :cond_1
    move v2, v3

    .line 369
    goto :goto_1

    .line 372
    :cond_2
    instance-of v1, p2, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_4

    .line 373
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    .line 376
    :cond_4
    instance-of v1, p2, Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_6

    .line 377
    invoke-interface {p2, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_4

    .line 381
    :cond_6
    invoke-interface {p2, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 337
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 338
    .local v1, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 339
    .local v2, "profilePref":Landroid/widget/CheckBox;
    if-nez v2, :cond_0

    .line 340
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 346
    .end local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/widget/CheckBox;
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 347
    .restart local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 348
    .restart local v2    # "profilePref":Landroid/widget/CheckBox;
    if-eqz v2, :cond_2

    .line 349
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 354
    .end local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/widget/CheckBox;
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 355
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 210
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-boolean v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    packed-switch p2, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f120028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 121
    .local v6, "deviceName":Landroid/widget/EditText;
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v6    # "deviceName":Landroid/widget/EditText;
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 125
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c020d

    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020153

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/exsettings/bluetooth/Utils;->updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 244
    .local v0, "prof":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_1

    .line 245
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    .line 249
    .end local v0    # "prof":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v0    # "prof":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "Error: Can\'t get the profile for the preference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    .line 82
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 84
    .local v1, "deviceManager":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 87
    .local v2, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 88
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 93
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    .line 100
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f1200be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f120028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 103
    .local v0, "deviceName":Landroid/widget/EditText;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/exsettings/bluetooth/Utf8ByteLengthFilter;

    const/16 v4, 0xf8

    invoke-direct {v3, v4}, Lcom/android/exsettings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 107
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0142

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0141

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c022b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 143
    :cond_1
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 325
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->dismiss()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 162
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method
