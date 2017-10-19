.class Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$1;
.super Ljava/lang/Object;
.source "AccessPointPreferenceGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$1;->this$0:Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$1;->this$0:Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;->notifyChanged()V

    .line 279
    return-void
.end method
