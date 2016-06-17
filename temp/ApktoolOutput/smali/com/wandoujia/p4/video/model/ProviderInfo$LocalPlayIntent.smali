.class public Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;
.super Ljava/lang/Object;
.source "ProviderInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c8b8d6d1cd8360L


# instance fields
.field public action:Ljava/lang/String;

.field public component:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent$Extra;",
            ">;"
        }
    .end annotation
.end field

.field public minVersionCode:I

.field public minWDJVersionCode:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method public convertToIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 140
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 142
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    const-class v1, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;

    invoke-virtual {v1, v0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;

    .line 147
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->action:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_0
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->component:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 152
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->component:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->data:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    :cond_2
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->extra:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->extra:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 160
    iget-object v0, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->extra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent$Extra;

    .line 161
    if-eqz v0, :cond_3

    .line 162
    iget-object v3, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent$Extra;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent$Extra;->value:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 153
    :cond_4
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, v0, Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 166
    :cond_5
    return-object v1

    :cond_6
    move-object v0, p0

    goto :goto_0
.end method
