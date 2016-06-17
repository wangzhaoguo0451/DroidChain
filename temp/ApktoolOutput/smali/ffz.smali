.class final Lffz;
.super Lfbz;
.source "CommunityMemberCardModel.java"


# instance fields
.field private synthetic a:Lffy;


# direct methods
.method constructor <init>(Lffy;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lffz;->a:Lffy;

    invoke-direct {p0}, Lfbz;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lffz;->a:Lffy;

    iget-object v0, v0, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lffz;->a:Lffy;

    iget-object v1, v1, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lchv;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lffz;->a:Lffy;

    iget-object v1, v1, Lffy;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lffz;->a:Lffy;

    iget-object v2, v2, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getUid()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "GROUP_ADMIN"

    iget-object v2, p0, Lffz;->a:Lffy;

    iget-object v2, v2, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Lfaz;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e021d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfeq;

    iget-object v4, p0, Lffz;->a:Lffy;

    iget-object v4, v4, Lffy;->a:Landroid/app/Activity;

    iget-object v5, p0, Lffz;->a:Lffy;

    iget-object v5, v5, Lffy;->b:Ljava/lang/String;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lfeq;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lfaz;-><init>(Ljava/lang/String;Lcom/wandoujia/mvc/Action;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    const-string v1, "GROUP_OWNER"

    iget-object v2, p0, Lffz;->a:Lffy;

    iget-object v2, v2, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lfaz;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e020d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfel;

    iget-object v4, p0, Lffz;->a:Lffy;

    iget-object v4, v4, Lffy;->a:Landroid/app/Activity;

    iget-object v5, p0, Lffz;->a:Lffy;

    iget-object v5, v5, Lffy;->b:Ljava/lang/String;

    iget-object v6, p0, Lffz;->a:Lffy;

    iget-object v6, v6, Lffy;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lfel;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lfaz;-><init>(Ljava/lang/String;Lcom/wandoujia/mvc/Action;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lffz;->a:Lffy;

    iget-object v0, v0, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getJoinTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01e7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lffz;->a:Lffy;

    iget-object v4, v4, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getJoinTime()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lffz;->a:Lffy;

    iget-object v0, v0, Lffy;->d:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getNick()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
