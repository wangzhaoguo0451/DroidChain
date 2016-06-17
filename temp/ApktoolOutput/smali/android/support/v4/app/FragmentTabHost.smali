.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laf;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/widget/TabHost$OnTabChangeListener;

.field private d:Laf;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 137
    return-void
.end method

.method private a(Ljava/lang/String;Lag;)Lag;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 322
    .line 323
    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf;

    .line 325
    iget-object v4, v0, Laf;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 323
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 329
    :cond_0
    if-nez v1, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No tab known for tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Laf;

    if-eq v0, v1, :cond_5

    .line 333
    if-nez p2, :cond_2

    .line 334
    invoke-virtual {v3}, Ls;->a()Lag;

    move-result-object p2

    .line 336
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Laf;

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Laf;

    iget-object v0, v0, Laf;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Laf;

    iget-object v0, v0, Laf;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Lag;->b(Landroid/support/v4/app/Fragment;)Lag;

    .line 341
    :cond_3
    if-eqz v1, :cond_4

    .line 342
    iget-object v0, v1, Laf;->d:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_6

    .line 343
    iget-object v0, v1, Laf;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Laf;->c:Landroid/os/Bundle;

    invoke-static {v3, v0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, v1, Laf;->d:Landroid/support/v4/app/Fragment;

    .line 345
    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->b:I

    iget-object v2, v1, Laf;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, v1, Laf;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v2, v3}, Lag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    .line 351
    :cond_4
    :goto_2
    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:Laf;

    .line 353
    :cond_5
    return-object p2

    .line 347
    :cond_6
    iget-object v0, v1, Laf;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Lag;->c(Landroid/support/v4/app/Fragment;)Lag;

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 252
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 257
    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf;

    .line 259
    iget-object v5, v0, Laf;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v0, Laf;->d:Landroid/support/v4/app/Fragment;

    .line 260
    iget-object v5, v0, Laf;->d:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_0

    iget-object v5, v0, Laf;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    iget-object v5, v0, Laf;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Laf;

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 269
    :cond_1
    if-nez v1, :cond_2

    .line 270
    invoke-virtual {v3}, Ls;->a()Lag;

    move-result-object v1

    .line 272
    :cond_2
    iget-object v0, v0, Laf;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Lag;->b(Landroid/support/v4/app/Fragment;)Lag;

    goto :goto_1

    .line 279
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Z

    .line 280
    invoke-direct {p0, v4, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Lag;)Lag;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v0}, Lag;->a()I

    .line 283
    invoke-virtual {v3}, Ls;->b()Z

    .line 285
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Z

    .line 291
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    check-cast p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 304
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    iget-object v0, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 296
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 297
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    .line 298
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Z

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Lag;)Lag;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lag;->a()I

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 319
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/widget/TabHost$OnTabChangeListener;

    .line 224
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
