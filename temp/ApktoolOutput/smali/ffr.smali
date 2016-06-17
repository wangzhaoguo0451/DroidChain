.class final Lffr;
.super Ljava/lang/Object;
.source "CommunityTopicFeedCardViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfgh;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lfgh;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lffr;->a:Lfgh;

    iput-object p2, p0, Lffr;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lffr;->a:Lfgh;

    invoke-virtual {v0}, Lfgh;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v0

    iget-object v1, p0, Lffr;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 49
    return-void
.end method
