.class final Lcom/android/exsettings/applications/ProcessStatsDetail$4;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;
    .param p2, "rhs"    # Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;

    .prologue
    .line 310
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_0
    iget-wide v0, p1, Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    iget-wide v2, p2, Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 313
    const/4 v0, -0x1

    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 307
    check-cast p1, Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;

    check-cast p2, Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/ProcessStatsDetail$4;->compare(Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;Lcom/android/exsettings/applications/ProcessStatsDetail$PkgService;)I

    move-result v0

    return v0
.end method
