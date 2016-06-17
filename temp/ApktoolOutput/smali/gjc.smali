.class final Lgjc;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lgjb;


# direct methods
.method constructor <init>(Lgjb;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lgjc;->a:Lgjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1023
    iget-object v0, p0, Lgjc;->a:Lgjb;

    iget-object v0, v0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/fragment/TabHostFragment;->b:Landroid/view/View;

    invoke-static {v0}, Ld;->g(Landroid/view/View;)V

    .line 1024
    iget-object v0, p0, Lgjc;->a:Lgjb;

    iget-object v0, v0, Lgjb;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->q(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V

    .line 1025
    return-void
.end method
