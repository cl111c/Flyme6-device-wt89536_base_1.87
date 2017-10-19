.class Lcom/android/exsettings/wakeup/GestureSettings$8;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureSettings;->createGloveModePromptDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wakeup/GestureSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wakeup/GestureSettings;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$8;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 541
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings$8;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # getter for: Lcom/android/exsettings/wakeup/GestureSettings;->mGloveModeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/exsettings/wakeup/GestureSettings;->access$800(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 544
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
