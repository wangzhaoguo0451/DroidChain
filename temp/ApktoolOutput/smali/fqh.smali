.class public final Lfqh;
.super Ljava/lang/Object;
.source "BaseDetailTabHostFragment.java"

# interfaces
.implements Lfne;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lfqh;->a:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lfqh;->a:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->a(Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lfqh;->a:Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/detail/explore/BaseDetailTabHostFragment;->d()V

    .line 40
    :cond_0
    return-void
.end method
