.class Lcom/android/exsettings/wakeup/GestureSettings$4;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wakeup/GestureSettings;->showAlarmStatusDialog()V
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
    .line 443
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$4;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings$4;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    iget-object v1, p0, Lcom/android/exsettings/wakeup/GestureSettings$4;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # getter for: Lcom/android/exsettings/wakeup/GestureSettings;->turnOverIndex:I
    invoke-static {v1}, Lcom/android/exsettings/wakeup/GestureSettings;->access$600(Lcom/android/exsettings/wakeup/GestureSettings;)I

    move-result v1

    # invokes: Lcom/android/exsettings/wakeup/GestureSettings;->clickTurnOverAlarmOK(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/wakeup/GestureSettings;->access$700(Lcom/android/exsettings/wakeup/GestureSettings;I)V

    .line 447
    return-void
.end method
