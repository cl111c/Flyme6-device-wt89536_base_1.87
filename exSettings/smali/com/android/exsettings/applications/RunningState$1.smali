.class Lcom/android/exsettings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/exsettings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/RunningState;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/exsettings/applications/RunningState$1;->this$0:Lcom/android/exsettings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/exsettings/applications/RunningState$MergedItem;Lcom/android/exsettings/applications/RunningState$MergedItem;)I
    .locals 12
    .param p1, "lhs"    # Lcom/android/exsettings/applications/RunningState$MergedItem;
    .param p2, "rhs"    # Lcom/android/exsettings/applications/RunningState$MergedItem;

    .prologue
    const/16 v11, 0x190

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 152
    iget v9, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    iget v10, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v9, v10, :cond_3

    .line 153
    iget v8, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v9, p0, Lcom/android/exsettings/applications/RunningState$1;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget v9, v9, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    if-ne v8, v9, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v6

    .line 154
    :cond_1
    iget v8, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v9, p0, Lcom/android/exsettings/applications/RunningState$1;->this$0:Lcom/android/exsettings/applications/RunningState;

    iget v9, v9, Lcom/android/exsettings/applications/RunningState;->mMyUserId:I

    if-ne v8, v9, :cond_2

    move v6, v7

    goto :goto_0

    .line 155
    :cond_2
    iget v8, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    iget v9, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mUserId:I

    if-lt v8, v9, :cond_0

    move v6, v7

    goto :goto_0

    .line 157
    :cond_3
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v10, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-ne v9, v10, :cond_5

    .line 158
    iget-object v7, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-ne v7, v9, :cond_4

    move v6, v8

    .line 159
    goto :goto_0

    .line 161
    :cond_4
    iget-object v7, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v6, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 163
    :cond_5
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-eqz v9, :cond_0

    .line 164
    iget-object v9, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    if-nez v9, :cond_6

    move v6, v7

    goto :goto_0

    .line 167
    :cond_6
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v2, v9, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 169
    .local v2, "lhsInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v5, v9, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 171
    .local v5, "rhsInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v9, v11, :cond_7

    move v1, v7

    .line 173
    .local v1, "lhsBg":Z
    :goto_1
    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v9, v11, :cond_8

    move v4, v7

    .line 176
    .local v4, "rhsBg":Z
    :goto_2
    if-eq v1, v4, :cond_a

    .line 177
    if-eqz v1, :cond_9

    :goto_3
    move v6, v7

    goto :goto_0

    .end local v1    # "lhsBg":Z
    .end local v4    # "rhsBg":Z
    :cond_7
    move v1, v8

    .line 171
    goto :goto_1

    .restart local v1    # "lhsBg":Z
    :cond_8
    move v4, v8

    .line 173
    goto :goto_2

    .restart local v4    # "rhsBg":Z
    :cond_9
    move v7, v6

    .line 177
    goto :goto_3

    .line 179
    :cond_a
    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_b

    move v0, v7

    .line 181
    .local v0, "lhsA":Z
    :goto_4
    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    move v3, v7

    .line 184
    .local v3, "rhsA":Z
    :goto_5
    if-eq v0, v3, :cond_d

    .line 185
    if-nez v0, :cond_0

    move v6, v7

    goto :goto_0

    .end local v0    # "lhsA":Z
    .end local v3    # "rhsA":Z
    :cond_b
    move v0, v8

    .line 179
    goto :goto_4

    .restart local v0    # "lhsA":Z
    :cond_c
    move v3, v8

    .line 181
    goto :goto_5

    .line 188
    .restart local v3    # "rhsA":Z
    :cond_d
    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v9, v10, :cond_e

    .line 189
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-lt v8, v9, :cond_0

    move v6, v7

    goto :goto_0

    .line 191
    :cond_e
    iget-object v9, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v9, v9, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v10, v10, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-ne v9, v10, :cond_f

    move v6, v8

    .line 192
    goto/16 :goto_0

    .line 194
    :cond_f
    iget-object v8, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v8, :cond_10

    move v6, v7

    goto/16 :goto_0

    .line 195
    :cond_10
    iget-object v7, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 196
    iget-object v6, p1, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/exsettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/exsettings/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/exsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/android/exsettings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/exsettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/RunningState$1;->compare(Lcom/android/exsettings/applications/RunningState$MergedItem;Lcom/android/exsettings/applications/RunningState$MergedItem;)I

    move-result v0

    return v0
.end method
