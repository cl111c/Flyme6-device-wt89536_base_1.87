.class Lcom/android/exsettings/sim/SimSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/exsettings/sim/SimSettings$1;->this$0:Lcom/android/exsettings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/exsettings/sim/SimSettings$1;->this$0:Lcom/android/exsettings/sim/SimSettings;

    # invokes: Lcom/android/exsettings/sim/SimSettings;->updateSubscriptions()V
    invoke-static {v0}, Lcom/android/exsettings/sim/SimSettings;->access$000(Lcom/android/exsettings/sim/SimSettings;)V

    .line 208
    return-void
.end method
