.class Lcom/android/exsettings/wakeup/GestureSettings$5;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wakeup/GestureSettings;
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
    .line 452
    iput-object p1, p0, Lcom/android/exsettings/wakeup/GestureSettings$5;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/exsettings/wakeup/GestureSettings$5;->this$0:Lcom/android/exsettings/wakeup/GestureSettings;

    # setter for: Lcom/android/exsettings/wakeup/GestureSettings;->turnOverIndex:I
    invoke-static {v0, p2}, Lcom/android/exsettings/wakeup/GestureSettings;->access$602(Lcom/android/exsettings/wakeup/GestureSettings;I)I

    .line 455
    return-void
.end method
