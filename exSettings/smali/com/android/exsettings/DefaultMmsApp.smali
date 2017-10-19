.class public Lcom/android/exsettings/DefaultMmsApp;
.super Landroid/app/Activity;
.source "DefaultMmsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;
    }
.end annotation


# instance fields
.field private applicationNames:[Ljava/lang/CharSequence;

.field private count:I

.field private defaultMmsPosition:I

.field private defaultPackageName:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mView:Landroid/view/View;

.field private packageNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/DefaultMmsApp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DefaultMmsApp;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->defaultPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/DefaultMmsApp;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/DefaultMmsApp;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    return-object v0
.end method

.method private initSmsApplicationSetting()V
    .locals 7

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/exsettings/DefaultMmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    .line 88
    .local v4, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/DefaultMmsApp;->count:I

    .line 89
    iget v5, p0, Lcom/android/exsettings/DefaultMmsApp;->count:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 92
    .local v3, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v5, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    iget-object v6, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_0

    .line 97
    .end local v3    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exsettings/DefaultMmsApp;->defaultPackageName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/exsettings/DefaultMmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 99
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/DefaultMmsApp;->defaultPackageName:Ljava/lang/String;

    .line 102
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/exsettings/DefaultMmsApp;->defaultPackageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/exsettings/DefaultMmsApp;->setPackageNames([Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private setPackageNames([Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "pkgNames"    # [Ljava/lang/String;
    .param p2, "defaultPkgName"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "foundPackages":I
    invoke-virtual {p0}, Lcom/android/exsettings/DefaultMmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 109
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    array-length v10, v10

    new-array v1, v10, [Landroid/content/pm/ApplicationInfo;

    .line 110
    .local v1, "appInfos":[Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_1

    .line 112
    :try_start_0
    iget-object v10, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iput v4, p0, Lcom/android/exsettings/DefaultMmsApp;->defaultMmsPosition:I

    .line 114
    :cond_0
    iget-object v10, p0, Lcom/android/exsettings/DefaultMmsApp;->packageNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    aput-object v10, v1, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 110
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-array v10, v3, [Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/android/exsettings/DefaultMmsApp;->applicationNames:[Ljava/lang/CharSequence;

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, "index":I
    const/4 v9, -0x1

    .line 123
    .local v9, "selectedIndex":I
    move-object v2, v1

    .local v2, "arr$":[Landroid/content/pm/ApplicationInfo;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v0, v2, v5

    .line 124
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 125
    iget-object v10, p0, Lcom/android/exsettings/DefaultMmsApp;->applicationNames:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v6

    .line 126
    if-eqz p2, :cond_2

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 128
    move v9, v6

    .line 130
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 123
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 133
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    return-void

    .line 116
    .end local v2    # "arr$":[Landroid/content/pm/ApplicationInfo;
    .end local v5    # "i$":I
    .end local v6    # "index":I
    .end local v7    # "len$":I
    .end local v9    # "selectedIndex":I
    :catch_0
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DefaultMmsApp;->setContentView(I)V

    .line 58
    const v0, 0x7f1200a9

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DefaultMmsApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->mView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/exsettings/DefaultMmsApp$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DefaultMmsApp$1;-><init>(Lcom/android/exsettings/DefaultMmsApp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f12003d

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DefaultMmsApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->mCancelButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/exsettings/DefaultMmsApp$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DefaultMmsApp$2;-><init>(Lcom/android/exsettings/DefaultMmsApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f1200ac

    invoke-virtual {p0, v0}, Lcom/android/exsettings/DefaultMmsApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->mListView:Landroid/widget/ListView;

    .line 79
    iget-object v0, p0, Lcom/android/exsettings/DefaultMmsApp;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 80
    invoke-direct {p0}, Lcom/android/exsettings/DefaultMmsApp;->initSmsApplicationSetting()V

    .line 81
    iget-object v6, p0, Lcom/android/exsettings/DefaultMmsApp;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;

    const v3, 0x7f040010

    iget-object v4, p0, Lcom/android/exsettings/DefaultMmsApp;->applicationNames:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/DefaultMmsApp$AppArrayAdapter;-><init>(Lcom/android/exsettings/DefaultMmsApp;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method
