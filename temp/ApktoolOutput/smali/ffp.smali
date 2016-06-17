.class final Lffp;
.super Ljava/lang/Object;
.source "CommunityTopicCardViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfgf;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lfgf;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lffp;->a:Lfgf;

    iput-object p2, p0, Lffp;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lffp;->a:Lfgf;

    invoke-virtual {v0}, Lfgf;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v0

    iget-object v1, p0, Lffp;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 60
    return-void
.end method
