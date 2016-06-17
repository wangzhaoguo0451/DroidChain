.class final Lffn;
.super Ljava/lang/Object;
.source "CommunityReplyCardViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

.field private synthetic b:Lffl;


# direct methods
.method constructor <init>(Lffl;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lffn;->b:Lffl;

    iput-object p2, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lffn;->b:Lffl;

    invoke-static {v0}, Lffl;->a(Lffl;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->currentUserCanDelete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lffn;->b:Lffl;

    invoke-static {v0}, Lffl;->a(Lffl;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanAddReply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :cond_2
    iget-object v0, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v0, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->currentUserCanDelete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lffn;->b:Lffl;

    invoke-static {v0}, Lffl;->b(Lffl;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0e0264

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfcq;

    new-instance v3, Lfiv;

    iget-object v4, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lfiv;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lffn;->b:Lffl;

    invoke-static {v4}, Lffl;->b(Lffl;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v5}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lfcq;-><init>(Lfir;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_3
    iget-object v0, p0, Lffn;->b:Lffl;

    invoke-static {v0}, Lffl;->a(Lffl;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->currentUserCanAddReply()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e02f4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lfea;

    iget-object v3, p0, Lffn;->b:Lffl;

    invoke-static {v3}, Lffl;->b(Lffl;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lffn;->b:Lffl;

    invoke-static {v4}, Lffl;->a(Lffl;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v4

    iget-object v5, p0, Lffn;->a:Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-direct {v2, v3, v4, v5}, Lfea;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_4
    new-instance v0, Lfom;

    iget-object v2, p0, Lffn;->b:Lffl;

    invoke-static {v2}, Lffl;->b(Lffl;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lfom;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lfom;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Lfon;

    invoke-direct {v3, v0, v1}, Lfon;-><init>([Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
