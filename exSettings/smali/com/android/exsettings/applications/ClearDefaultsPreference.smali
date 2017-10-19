.class public Lcom/android/exsettings/applications/ClearDefaultsPreference;
.super Landroid/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/exsettings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v1, 0x7f040012

    invoke-virtual {p0, v1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/applications/ClearDefaultsPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exsettings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/applications/ClearDefaultsPreference;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    return-void
.end method

.method private isDefaultBrowser(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 179
    const v0, 0x7f0c0565

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->updateUI()Z

    .line 121
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f120021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/exsettings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/exsettings/applications/ClearDefaultsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setAppEntry(Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    .line 85
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public updateUI()Z
    .locals 14

    .prologue
    .line 124
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v11, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v6

    .line 127
    .local v6, "hasBindAppWidgetPermission":Z
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v11, 0x7f120020

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "autoLaunchView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/exsettings/Utils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v11, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/exsettings/Utils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 131
    .local v2, "autoLaunchEnabled":Z
    :goto_0
    if-nez v2, :cond_2

    if-nez v6, :cond_2

    .line 132
    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    .line 170
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 128
    .end local v2    # "autoLaunchEnabled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 134
    .restart local v2    # "autoLaunchEnabled":Z
    :cond_2
    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    .line 136
    .local v9, "useBullets":Z
    :goto_2
    if-eqz v6, :cond_8

    .line 137
    const v10, 0x7f0c054f

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :goto_3
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 143
    .local v5, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 144
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b003d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 146
    .local v4, "bulletIndent":I
    if-eqz v2, :cond_4

    .line 147
    const v10, 0x7f0c0563

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    .local v1, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    .local v7, "s":Landroid/text/SpannableString;
    if-eqz v9, :cond_3

    .line 151
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 153
    :cond_3
    if-nez v8, :cond_9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 156
    .end local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v7    # "s":Landroid/text/SpannableString;
    :cond_4
    :goto_4
    if-eqz v6, :cond_6

    .line 157
    const v10, 0x7f0c0564

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 159
    .local v0, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .restart local v7    # "s":Landroid/text/SpannableString;
    if-eqz v9, :cond_5

    .line 161
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v4}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 164
    :cond_5
    if-nez v8, :cond_a

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 167
    .end local v0    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v7    # "s":Landroid/text/SpannableString;
    :cond_6
    :goto_5
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v10, p0, Lcom/android/exsettings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 134
    .end local v4    # "bulletIndent":I
    .end local v5    # "context":Landroid/content/Context;
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "useBullets":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 139
    .restart local v9    # "useBullets":Z
    :cond_8
    const v10, 0x7f0c054e

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 153
    .restart local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v4    # "bulletIndent":I
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v7    # "s":Landroid/text/SpannableString;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_9
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_4

    .line 164
    .end local v1    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v0    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_a
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    const-string v12, "\n"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    const-string v12, "\n"

    aput-object v12, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5
.end method
