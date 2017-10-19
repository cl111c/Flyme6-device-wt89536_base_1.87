.class Lcom/android/exsettings/wakeup/AppSelect$AppInfo;
.super Ljava/lang/Object;
.source "AppSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wakeup/AppSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInfo"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field appSummary:Ljava/lang/String;

.field enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appSummary"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput-object p1, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->appName:Ljava/lang/String;

    .line 771
    if-eqz p2, :cond_0

    .line 772
    iput-object p2, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->appSummary:Ljava/lang/String;

    .line 774
    :cond_0
    iput-boolean p3, p0, Lcom/android/exsettings/wakeup/AppSelect$AppInfo;->enable:Z

    .line 775
    return-void
.end method
