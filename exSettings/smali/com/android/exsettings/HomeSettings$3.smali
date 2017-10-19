.class Lcom/android/exsettings/HomeSettings$3;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/HomeSettings;->buildHomeActivitiesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/HomeSettings;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/exsettings/HomeSettings$3;->this$0:Lcom/android/exsettings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/exsettings/HomeSettings$3;->this$0:Lcom/android/exsettings/HomeSettings;

    # getter for: Lcom/android/exsettings/HomeSettings;->mCurrentHome:Lcom/android/exsettings/HomeSettings$HomeAppPreference;
    invoke-static {v0}, Lcom/android/exsettings/HomeSettings;->access$300(Lcom/android/exsettings/HomeSettings;)Lcom/android/exsettings/HomeSettings$HomeAppPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 227
    return-void
.end method
