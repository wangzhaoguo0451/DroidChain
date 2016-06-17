.class public final Lewa;
.super Ljava/lang/Object;
.source "CommentItemController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/app/detail/view/CommentItemView;",
        "Lews;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lhma;

.field private b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

.field private c:Lews;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lhma;

    invoke-direct {v0}, Lhma;-><init>()V

    iput-object v0, p0, Lewa;->a:Lhma;

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    check-cast p2, Lews;

    iput-object p1, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    iput-object p2, p0, Lewa;->c:Lews;

    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getAuthorNameView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lewa;->c:Lews;

    iget-object v1, v1, Lews;->a:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lewa;->a:Lhma;

    iget-object v1, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getAuthorIconView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lewa;->c:Lews;

    iget-object v2, v2, Lews;->a:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getDateView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lewa;->c:Lews;

    iget-object v1, v1, Lews;->a:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lewa;->c:Lews;

    iget-object v0, v0, Lews;->a:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getEnjoy()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getHeartView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lewa;->c:Lews;

    iget-object v0, v0, Lews;->a:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getEnjoy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getHeartView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getContentView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lewa;->c:Lews;

    iget-object v0, v0, Lews;->a:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "<br />"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getHeartView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020271

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lewa;->b:Lcom/wandoujia/p4/app/detail/view/CommentItemView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/view/CommentItemView;->getHeartView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
