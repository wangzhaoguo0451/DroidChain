.class public final Lfhk;
.super Ljava/lang/Object;
.source "CommunityPostContentFragment.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lfhk;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 276
    iget-object v0, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 277
    iget-object v0, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->e(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    iget-object v0, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    const v2, 0x7f0e01ff

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const v0, 0x7f0e0200

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 316
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->f(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 289
    iget-object v2, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    const v3, 0x7f0e0203

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v5, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v5}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->f(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {}, Lchv;->z()Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    const v0, 0x7f0e0201

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 299
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v2, "community"

    invoke-direct {v0, v2, v6}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    invoke-static {}, Lchv;->w()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v2, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    :goto_1
    iput v6, v0, Lcom/wandoujia/account/AccountParams;->c:I

    iput-boolean v6, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    iput-boolean v6, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    invoke-static {}, Letz;->a()Letz;

    move-result-object v2

    iget-object v2, v2, Letz;->a:Lcmm;

    const-class v3, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;

    invoke-static {v1, v2, v0, v3}, Ld;->a(Landroid/content/Context;Lcmm;Lcom/wandoujia/account/AccountParams;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v2, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    goto :goto_1

    .line 301
    :cond_4
    invoke-static {}, Lchv;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    iget-object v0, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    const v2, 0x7f0e0202

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-virtual {v4}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto/16 :goto_0

    .line 309
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->c()Lfhl;

    move-result-object v1

    iget-object v2, p0, Lfhk;->a:Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lfhl;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 314
    invoke-static {}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->a()Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;->PUSH:Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper;->a(Lcom/wandoujia/p4/background/BackgroundServiceSettingHelper$BackgroundServiceType;)V

    goto/16 :goto_0
.end method
