.class Lcom/android/server/policy/MisTouchActions;
.super Ljava/lang/Object;
.source "MisTouchActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MisTouchActions$newDialog;
    }
.end annotation


# static fields
.field private static final GO_TO_SLEEP:I = 0x1f40


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

.field private final mHandler:Landroid/os/Handler;

.field private toSleepRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/android/server/policy/MisTouchActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MisTouchActions$1;-><init>(Lcom/android/server/policy/MisTouchActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MisTouchActions;->toSleepRunnable:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/android/server/policy/MisTouchActions;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MisTouchActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MisTouchActions;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDialog()Lcom/android/server/policy/MisTouchActions$newDialog;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/policy/MisTouchActions$newDialog;

    iget-object v1, p0, Lcom/android/server/policy/MisTouchActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/MisTouchActions$newDialog;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "dialog":Lcom/android/server/policy/MisTouchActions$newDialog;
    invoke-virtual {v0}, Lcom/android/server/policy/MisTouchActions$newDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 86
    return-object v0
.end method

.method private setFullScreen()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/MisTouchActions$newDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/MisTouchActions$newDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/MisTouchActions$newDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 112
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/MisTouchActions$newDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MisTouchActions;->toSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    .line 81
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/server/policy/MisTouchActions;->dismissDialog()V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/MisTouchActions;->createDialog()Lcom/android/server/policy/MisTouchActions$newDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    .line 66
    invoke-direct {p0}, Lcom/android/server/policy/MisTouchActions;->setFullScreen()V

    .line 67
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mDialog:Lcom/android/server/policy/MisTouchActions$newDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/MisTouchActions$newDialog;->show()V

    .line 69
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MisTouchActions;->toSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/MisTouchActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/MisTouchActions;->toSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method
