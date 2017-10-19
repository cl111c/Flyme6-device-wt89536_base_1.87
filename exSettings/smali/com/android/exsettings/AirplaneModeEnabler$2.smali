.class Lcom/android/exsettings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/exsettings/AirplaneModeEnabler$2;->this$0:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/exsettings/AirplaneModeEnabler$2;->this$0:Lcom/android/exsettings/AirplaneModeEnabler;

    # invokes: Lcom/android/exsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/exsettings/AirplaneModeEnabler;->access$000(Lcom/android/exsettings/AirplaneModeEnabler;)V

    .line 68
    return-void
.end method
