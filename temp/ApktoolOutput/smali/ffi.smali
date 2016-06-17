.class final Lffi;
.super Ljava/lang/Object;
.source "CommunityNotificationCardController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfga;

.field private synthetic b:Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;


# direct methods
.method constructor <init>(Lfga;Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lffi;->a:Lfga;

    iput-object p2, p0, Lffi;->b:Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    iget-object v1, p0, Lffi;->a:Lfga;

    invoke-virtual {v1}, Lfga;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lffi;->b:Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 49
    return-void
.end method
