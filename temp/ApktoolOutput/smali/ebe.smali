.class final Lebe;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldyh;

.field private synthetic b:Lebd;


# direct methods
.method constructor <init>(Lebd;Ldyh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lebe;->b:Lebd;

    iput-object p2, p0, Lebe;->a:Ldyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 148
    invoke-static {}, Lebb;->c()V

    .line 149
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 150
    const/4 v0, 0x0

    .line 151
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 153
    iget-object v1, p0, Lebe;->a:Ldyh;

    iget-object v1, v1, Ldyh;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    .line 154
    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->isReceived()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CDKEY"

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v3, v1

    .line 166
    :goto_1
    const/4 v1, 0x0

    .line 167
    iget-object v7, p0, Lebe;->b:Lebd;

    iget-object v7, v7, Lebd;->a:Lebb;

    invoke-static {v7}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lebe;->b:Lebd;

    iget-object v7, v7, Lebd;->a:Lebb;

    invoke-static {v7}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    iget-object v1, p0, Lebe;->b:Lebd;

    iget-object v1, v1, Lebd;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 173
    :cond_1
    new-instance v7, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    invoke-direct {v7, v0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;-><init>(Lcom/wandoujia/launcher/gift/http/model/GiftModel;)V

    .line 174
    if-eqz v1, :cond_3

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 176
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 177
    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->setStatus(Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;)V

    .line 181
    :goto_2
    invoke-virtual {v7}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v1

    sget-object v8, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    if-ne v1, v8, :cond_8

    .line 182
    add-int/lit8 v1, v2, 0x1

    .line 184
    :goto_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 187
    goto/16 :goto_0

    .line 164
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    :cond_4
    iget-object v0, p0, Lebe;->a:Ldyh;

    iget-object v0, v0, Ldyh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    .line 191
    iget-object v1, p0, Lebe;->b:Lebd;

    iget-object v1, v1, Lebd;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lebe;->b:Lebd;

    iget-object v1, v1, Lebd;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    iget-object v1, p0, Lebe;->b:Lebd;

    iget-object v1, v1, Lebd;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v6, v1, :cond_5

    .line 196
    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_5
    invoke-static {}, Ldyo;->a()Ldyo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getId()J

    move-result-wide v6

    iget-object v0, p0, Lebe;->b:Lebd;

    iget-object v0, v0, Lebd;->a:Lebb;

    invoke-static {v0}, Lebb;->c(Lebb;)Lebi;

    move-result-object v0

    invoke-virtual {v1, v6, v7, v0}, Ldyo;->a(JLeax;)V

    goto :goto_4

    .line 202
    :cond_6
    iget-object v0, p0, Lebe;->b:Lebd;

    iget-object v0, v0, Lebd;->a:Lebb;

    invoke-static {v0, v5}, Lebb;->a(Lebb;Ljava/util/Map;)Ljava/util/Map;

    .line 203
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 204
    iget-object v0, p0, Lebe;->b:Lebd;

    iget-object v0, v0, Lebd;->a:Lebb;

    invoke-static {v0, v2}, Lebb;->a(Lebb;I)V

    .line 207
    :cond_7
    const-string v0, "folder_gift_list"

    invoke-static {v0, v5}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-void

    :cond_8
    move v1, v2

    goto/16 :goto_3
.end method
