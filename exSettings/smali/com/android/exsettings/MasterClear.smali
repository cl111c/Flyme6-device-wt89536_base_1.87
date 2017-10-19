.class public Lcom/android/exsettings/MasterClear;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/android/exsettings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/MasterClear$1;-><init>(Lcom/android/exsettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/exsettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/exsettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/MasterClear;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/exsettings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/MasterClear;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/exsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 140
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f12012f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/exsettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 141
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/exsettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f12012d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 143
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f12012e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/exsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 152
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 153
    .local v3, "isExtStorageEmulated":Z
    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/exsettings/MasterClear;->isExtStorageEncrypted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f12012c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "externalOption":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f120128

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "externalAlsoErased":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v8, p0, Lcom/android/exsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    .end local v1    # "externalAlsoErased":Landroid/view/View;
    .end local v2    # "externalOption":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 177
    .local v5, "um":Landroid/os/UserManager;
    invoke-direct {p0, v5}, Lcom/android/exsettings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v0, "contentDescription":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f120127

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, "masterClearContainer":Landroid/view/View;
    invoke-direct {p0, v4, v0}, Lcom/android/exsettings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 181
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .end local v0    # "contentDescription":Ljava/lang/StringBuffer;
    .end local v4    # "masterClearContainer":Landroid/view/View;
    .end local v5    # "um":Landroid/os/UserManager;
    .restart local v1    # "externalAlsoErased":Landroid/view/View;
    .restart local v2    # "externalOption":Landroid/view/View;
    :cond_1
    move v6, v7

    .line 165
    goto :goto_0

    .line 167
    .end local v1    # "externalAlsoErased":Landroid/view/View;
    .end local v2    # "externalOption":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v7, Lcom/android/exsettings/MasterClear$2;

    invoke-direct {v7, p0}, Lcom/android/exsettings/MasterClear$2;-><init>(Lcom/android/exsettings/MasterClear;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .prologue
    .line 185
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 186
    check-cast v2, Landroid/view/ViewGroup;

    .line 187
    .local v2, "vGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 188
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "nextChild":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/android/exsettings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "vGroup":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 192
    check-cast v3, Landroid/widget/TextView;

    .line 193
    .local v3, "vText":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 194
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    .end local v3    # "vText":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 199
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 35
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f120129

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 205
    .local v9, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f12012a

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 206
    .local v12, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 209
    .local v13, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v26

    .line 210
    .local v26, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 212
    .local v27, "profilesSize":I
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    .line 214
    .local v22, "mgr":Landroid/accounts/AccountManager;
    const-string v32, "layout_inflater"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 217
    .local v20, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .line 218
    .local v8, "accountsCount":I
    const/16 v25, 0x0

    .local v25, "profileIndex":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 219
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    .line 220
    .local v31, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 221
    .local v24, "profileId":I
    new-instance v30, Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 222
    .local v30, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v7

    .line 223
    .local v7, "accounts":[Landroid/accounts/Account;
    array-length v5, v7

    .line 224
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 218
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 227
    :cond_1
    add-int/2addr v8, v5

    .line 229
    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 231
    .local v15, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v15

    .line 233
    .local v4, "M":I
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/exsettings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 234
    .local v29, "titleView":Landroid/view/View;
    const v32, 0x1020016

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 235
    .local v28, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v32

    if-eqz v32, :cond_2

    const v32, 0x7f0c0381

    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    const/16 v32, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v5, :cond_0

    .line 242
    aget-object v6, v7, v18

    .line 243
    .local v6, "account":Landroid/accounts/Account;
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v13, v0}, Lcom/android/exsettings/Utils;->showAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 241
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 235
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v18    # "i":I
    :cond_2
    const v32, 0x7f0c0380

    goto :goto_1

    .line 247
    .restart local v6    # "account":Landroid/accounts/Account;
    .restart local v18    # "i":I
    :cond_3
    const/4 v14, 0x0

    .line 248
    .local v14, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    .line 249
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    aget-object v33, v15, v21

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 250
    aget-object v14, v15, v21

    .line 254
    :cond_4
    if-nez v14, :cond_6

    .line 255
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "No descriptor for account name="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " type="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 248
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 259
    :cond_6
    const/16 v19, 0x0

    .line 261
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 262
    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 264
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 272
    .end local v10    # "authContext":Landroid/content/Context;
    :cond_7
    :goto_5
    if-nez v19, :cond_8

    .line 273
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 276
    :cond_8
    const v32, 0x7f04008f

    const/16 v33, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 278
    .local v11, "child":Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 280
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 267
    .end local v11    # "child":Landroid/widget/TextView;
    :catch_0
    move-exception v16

    .line 268
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Bad package name for account type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 269
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v16

    .line 270
    .local v16, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v32, "MasterClear"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Invalid icon id for account type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 284
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .end local v14    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v15    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v18    # "i":I
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "j":I
    .end local v24    # "profileId":I
    .end local v28    # "titleText":Landroid/widget/TextView;
    .end local v29    # "titleView":Landroid/view/View;
    .end local v30    # "userHandle":Landroid/os/UserHandle;
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    if-lez v8, :cond_a

    .line 285
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f12012b

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 290
    .local v23, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v32

    sub-int v32, v32, v27

    if-lez v32, :cond_b

    const/16 v17, 0x1

    .line 291
    .local v17, "hasOtherUsers":Z
    :goto_6
    if-eqz v17, :cond_c

    const/16 v32, 0x8

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    return-void

    .line 290
    .end local v17    # "hasOtherUsers":Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 291
    .restart local v17    # "hasOtherUsers":Z
    :cond_c
    const/16 v32, 0x8

    goto :goto_7
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0c04a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "erase_sd"

    iget-object v1, p0, Lcom/android/exsettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    const-class v1, Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c04b0

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 312
    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    const v0, 0x7f040091

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_1
    const v0, 0x7f04008e

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    .line 306
    invoke-direct {p0}, Lcom/android/exsettings/MasterClear;->establishInitialState()V

    .line 307
    iget-object v0, p0, Lcom/android/exsettings/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
