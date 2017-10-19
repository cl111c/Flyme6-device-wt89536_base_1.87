.class public Landroid/support/v13/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentTabHost$1;,
        Landroid/support/v13/app/FragmentTabHost$SavedState;,
        Landroid/support/v13/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v13/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "newTab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 316
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 317
    .local v2, "tab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    move-object v1, v2

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "tab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 322
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_2
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eq v3, v1, :cond_6

    .line 325
    if-nez p2, :cond_3

    .line 326
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 328
    :cond_3
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eqz v3, :cond_4

    .line 329
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 330
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 333
    :cond_4
    if-eqz v1, :cond_5

    .line 334
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_7

    .line 335
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$300(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$400(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v3

    # setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1, v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 337
    iget v3, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 343
    :cond_5
    :goto_1
    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 345
    :cond_6
    return-object p2

    .line 339
    :cond_7
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 244
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 250
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 251
    .local v3, "tab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    # setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3, v4}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 252
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    iput-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 249
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    if-nez v1, :cond_2

    .line 262
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 264
    :cond_2
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 271
    .end local v3    # "tab":Landroid/support/v13/app/FragmentTabHost$TabInfo;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 272
    invoke-direct {p0, v0, v1}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_4

    .line 274
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 275
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 277
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 283
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 295
    move-object v0, p1

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    .line 296
    .local v0, "ss":Landroid/support/v13/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 297
    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v13/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 288
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 289
    .local v0, "ss":Landroid/support/v13/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 290
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-boolean v1, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 304
    .local v0, "ft":Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 308
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 311
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 216
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
