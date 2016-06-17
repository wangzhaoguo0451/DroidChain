.class public final Lgij;
.super Ljava/lang/Object;
.source "VideoDetailDescriptionInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:I

.field private synthetic c:Ljava/util/List;

.field private synthetic d:I

.field private synthetic e:I

.field private synthetic f:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;Ljava/util/List;ILjava/util/List;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lgij;->f:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;

    iput-object p2, p0, Lgij;->a:Ljava/util/List;

    iput p3, p0, Lgij;->b:I

    iput-object p4, p0, Lgij;->c:Ljava/util/List;

    iput p5, p0, Lgij;->d:I

    iput p6, p0, Lgij;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 248
    new-instance v0, Leub;

    iget-object v1, p0, Lgij;->f:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lgij;->a:Ljava/util/List;

    iget v3, p0, Lgij;->b:I

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lgij;->c:Ljava/util/List;

    iget v4, p0, Lgij;->d:I

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lgij;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Leub;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0}, Leub;->execute()V

    .line 252
    return-void
.end method
