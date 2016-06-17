.class final Lfnz;
.super Ljava/lang/Object;
.source "CommunityTopicDetailBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lfny;


# direct methods
.method constructor <init>(Lfny;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lfnz;->b:Lfny;

    iput p2, p0, Lfnz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v0, p0, Lfnz;->b:Lfny;

    iget-object v0, v0, Leun;->a:Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    .line 210
    iget-object v3, v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    iget-object v0, v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lfnz;->b:Lfny;

    iget-object v0, v0, Lfny;->b:Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicDetailBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lfnz;->a:I

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 216
    return-void
.end method
