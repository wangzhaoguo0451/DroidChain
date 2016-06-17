.class final Lfnp;
.super Ljava/lang/Object;
.source "SubCategoriesGenerator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/widget/TextView;

.field private synthetic c:Lfno;


# direct methods
.method constructor <init>(Lfno;ILandroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lfnp;->c:Lfno;

    iput p2, p0, Lfnp;->a:I

    iput-object p3, p0, Lfnp;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lfnp;->c:Lfno;

    iget-object v0, v0, Lfno;->d:Lfnq;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lfnp;->c:Lfno;

    iget-object v0, v0, Lfno;->d:Lfnq;

    iget v1, p0, Lfnp;->a:I

    iget-object v0, v0, Lfnq;->a:Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lfnp;->c:Lfno;

    iget-object v1, p0, Lfnp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lfno;->a(Landroid/widget/TextView;)V

    .line 68
    return-void
.end method
