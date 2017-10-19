.class Lcom/android/exsettings/wakeup/GestureSettings$7;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 530
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$7;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings$7;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # getter for: Lcom/android/exsettings/wakeup/GestureSettings;->mGloveModeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/exsettings/wakeup/GestureSettings;->access$800(Lcom/android/exsettings/wakeup/GestureSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 534
    return-void
.end method
