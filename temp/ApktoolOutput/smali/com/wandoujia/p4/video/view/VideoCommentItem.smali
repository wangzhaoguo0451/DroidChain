.class public Lcom/wandoujia/p4/video/view/VideoCommentItem;
.super Landroid/widget/RelativeLayout;
.source "VideoCommentItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/wandoujia/entities/video/NetVideoInfo$Comment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoCommentItem;
    .locals 1
    .parameter

    .prologue
    .line 33
    const v0, 0x7f030049

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/view/VideoCommentItem;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0c01a4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoCommentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->a:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0c01a5

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoCommentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->b:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public setData(Lcom/wandoujia/entities/video/NetVideoInfo$Comment;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->c:Lcom/wandoujia/entities/video/NetVideoInfo$Comment;

    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->c:Lcom/wandoujia/entities/video/NetVideoInfo$Comment;

    iget-object v2, v2, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->c:Lcom/wandoujia/entities/video/NetVideoInfo$Comment;

    iget-wide v2, v2, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;->date:J

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatDateInfoToDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/video/view/VideoCommentItem;->c:Lcom/wandoujia/entities/video/NetVideoInfo$Comment;

    iget-object v1, v1, Lcom/wandoujia/entities/video/NetVideoInfo$Comment;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
