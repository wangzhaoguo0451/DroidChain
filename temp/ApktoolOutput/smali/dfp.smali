.class public final Ldfp;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Ldfp;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method public final b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    iget-object v2, p0, Ldfp;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldfn;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Ldfp;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldfn;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v2, v3, Lhbc;->d:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, v3, Lhbc;->d:Z

    move v2, v0

    :goto_1
    iget-object v0, v3, Lhbc;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, v3, Lhbc;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    instance-of v4, v0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a(Z)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    move v1, v0

    goto :goto_0

    .line 167
    :cond_1
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
