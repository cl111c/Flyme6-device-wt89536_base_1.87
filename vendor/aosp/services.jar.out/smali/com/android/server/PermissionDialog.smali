.class public Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# static fields
.field static final ALLOWED_REQ:I = 0x2

.field static final IGNORED_REQ:I = 0x4

.field static final IGNORED_REQ_TIMEOUT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PermInfo"

.field static final TIMEOUT_WAIT:J = 0x3a98L


# instance fields
.field private checkSta:Landroid/widget/CheckBox;

.field private contId:Landroid/content/Context;

.field private inputId:I

.field private final inputPackage:Ljava/lang/String;

.field private final mDef:I

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final myHandle:Landroid/os/Handler;

.field private final opsServ:Lcom/android/server/AppOpsService;

.field private viewId:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 8
    .param p1, "contextId"    # Landroid/content/Context;
    .param p2, "opsService"    # Lcom/android/server/AppOpsService;
    .param p3, "defInf"    # I
    .param p4, "idInfo"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v4, Lcom/android/server/PermissionDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;)V

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;

    .line 64
    iput-object p5, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/PermissionDialog;->contId:Landroid/content/Context;

    .line 66
    iput p3, p0, Lcom/android/server/PermissionDialog;->mDef:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    .local v2, "rId":Landroid/content/res/Resources;
    iput p4, p0, Lcom/android/server/PermissionDialog;->inputId:I

    .line 69
    const v4, 0x107000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 71
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/PermissionDialog;->setCancelable(Z)V

    .line 72
    const/4 v4, -0x1

    const v5, 0x10405ab

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 75
    const/4 v4, -0x2

    const v5, 0x10405ac

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 78
    const v4, 0x10405aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/PermissionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 80
    .local v1, "paraDef":Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x110

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 83
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109009c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 86
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    const v5, 0x1020399

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    .local v3, "textId":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    const v5, 0x102039b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/server/PermissionDialog;->checkSta:Landroid/widget/CheckBox;

    .line 91
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    .line 94
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/server/PermissionDialog;->mDef:I

    add-int/lit8 v6, v6, -0x40

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/server/PermissionDialog;->setView(Landroid/view/View;)V

    .line 96
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->checkSta:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/PermissionDialog;->mDef:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/PermissionDialog;->inputId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "inputName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->contId:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 121
    .local v1, "packMan":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 123
    .local v2, "runInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    :cond_0
    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
