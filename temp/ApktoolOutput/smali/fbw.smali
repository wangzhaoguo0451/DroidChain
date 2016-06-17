.class final Lfbw;
.super Ljava/lang/Object;
.source "CardViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/card/models/CardViewModel;

.field private synthetic b:Lfca;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/card/models/CardViewModel;Lfca;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lfbw;->a:Lcom/wandoujia/p4/card/models/CardViewModel;

    iput-object p2, p0, Lfbw;->b:Lfca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lfbw;->a:Lcom/wandoujia/p4/card/models/CardViewModel;

    iget-object v1, p0, Lfbw;->b:Lfca;

    invoke-virtual {v1}, Lfca;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wandoujia/p4/card/models/CardViewModel;->a(Landroid/view/View;)Lcom/wandoujia/mvc/Action;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 62
    :cond_0
    return-void
.end method
