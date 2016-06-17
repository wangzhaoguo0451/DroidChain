.class public final Lfoe;
.super Lgf;
.source "CommunityTopicListBannerView.java"


# instance fields
.field private final b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lgf;-><init>()V

    .line 107
    iput-object p1, p0, Lfoe;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    .line 108
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lfoe;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 122
    const v0, 0x7f0300c0

    invoke-static {p1, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 124
    const v0, 0x7f0c0023

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;

    .line 126
    const v1, 0x7f0c0297

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    const v2, 0x7f0c0298

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    packed-switch p2, :pswitch_data_0

    .line 144
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    return-object v3

    .line 131
    :pswitch_0
    iget-object v4, p0, Lfoe;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getIcon()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v4

    sget-object v5, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->MIDDLE:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    invoke-static {v4, v5}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0044

    invoke-virtual {v0, v4, v5}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->a(Ljava/lang/String;I)V

    .line 133
    iget-object v4, p0, Lfoe;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getSlogan()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0e01cb

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lfoe;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v5}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getTotalTopicCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lfoe;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v6}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getMembersCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0, v7}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setVisibility(I)V

    .line 138
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v4, p0, Lfoe;->b:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0, v5}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->setVisibility(I)V

    .line 143
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x2

    return v0
.end method
