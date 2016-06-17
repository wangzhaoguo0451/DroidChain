.class final Lffm;
.super Ljava/lang/Object;
.source "CommunityReplyCardViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

.field private synthetic b:Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lffm;->a:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    iput-object p2, p0, Lffm;->b:Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    iget-object v1, p0, Lffm;->a:Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lffm;->b:Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/card/view/CommunityReplyCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 93
    return-void
.end method
