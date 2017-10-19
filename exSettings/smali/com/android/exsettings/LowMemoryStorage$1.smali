.class Lcom/android/exsettings/LowMemoryStorage$1;
.super Landroid/content/BroadcastReceiver;
.source "LowMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/LowMemoryStorage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/LowMemoryStorage;


# direct methods
.method constructor <init>(Lcom/android/exsettings/LowMemoryStorage;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/exsettings/LowMemoryStorage$1;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage$1;->this$0:Lcom/android/exsettings/LowMemoryStorage;

    invoke-virtual {v0}, Lcom/android/exsettings/LowMemoryStorage;->refreshDialog()V

    .line 80
    return-void
.end method
