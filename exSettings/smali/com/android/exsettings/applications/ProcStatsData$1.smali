.class final Lcom/android/exsettings/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/ProcStatsData;
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
        "Lcom/android/exsettings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/applications/ProcStatsEntry;Lcom/android/exsettings/applications/ProcStatsEntry;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/exsettings/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/android/exsettings/applications/ProcStatsEntry;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 449
    iget-wide v2, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v4, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    iget-wide v2, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v4, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 452
    goto :goto_0

    .line 453
    :cond_2
    iget-wide v2, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v4, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 455
    iget-wide v2, p1, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v4, p2, Lcom/android/exsettings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 456
    goto :goto_0

    .line 458
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 446
    check-cast p1, Lcom/android/exsettings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/exsettings/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/ProcStatsData$1;->compare(Lcom/android/exsettings/applications/ProcStatsEntry;Lcom/android/exsettings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
