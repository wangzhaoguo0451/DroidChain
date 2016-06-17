.class public final Lfqk;
.super Ljava/lang/Object;
.source "BaseDetailTabHostFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:I

.field private synthetic b:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lfqk;->b:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lfqk;->a:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lfqk;->b:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 89
    iget v1, p0, Lfqk;->a:I

    if-ne v1, v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput v0, p0, Lfqk;->a:I

    .line 93
    iget-object v0, p0, Lfqk;->b:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;

    iget v1, p0, Lfqk;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a(I)V

    goto :goto_0
.end method
