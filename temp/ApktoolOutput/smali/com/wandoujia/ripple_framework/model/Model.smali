.class public final Lcom/wandoujia/ripple_framework/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lcom/wandoujia/api/proto/AppDetail;

.field private static final q:Lcom/wandoujia/api/proto/ArticleDetail;

.field private static final r:Lcom/wandoujia/api/proto/VideoDetail;

.field private static final s:Lcom/wandoujia/api/proto/PublisherDetail;

.field private static final t:Lcom/wandoujia/api/proto/PublisherTimeDetail;

.field private static final u:Lcom/wandoujia/api/proto/PublisherBundleDetail;


# instance fields
.field public final a:Lcom/wandoujia/api/proto/Entity$Builder;

.field public b:Lcom/wandoujia/api/proto/Entity;

.field public c:Lcom/wandoujia/ripple_framework/model/Model;

.field public d:I

.field public e:Z

.field public f:Lcom/wandoujia/ripple_framework/model/Model;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

.field public m:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

.field public n:Lhht;

.field public o:Ljava/lang/CharSequence;

.field private final v:Landroid/util/SparseArray;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->p:Lcom/wandoujia/api/proto/AppDetail;

    .line 52
    new-instance v0, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/MediaPressDetail$Builder;->build()Lcom/wandoujia/api/proto/MediaPressDetail;

    .line 54
    new-instance v0, Lcom/wandoujia/api/proto/ArticleDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/ArticleDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->build()Lcom/wandoujia/api/proto/ArticleDetail;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->q:Lcom/wandoujia/api/proto/ArticleDetail;

    .line 55
    new-instance v0, Lcom/wandoujia/api/proto/MusicDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/MusicDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/MusicDetail$Builder;->build()Lcom/wandoujia/api/proto/MusicDetail;

    .line 56
    new-instance v0, Lcom/wandoujia/api/proto/VideoDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/VideoDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/VideoDetail$Builder;->build()Lcom/wandoujia/api/proto/VideoDetail;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->r:Lcom/wandoujia/api/proto/VideoDetail;

    .line 57
    new-instance v0, Lcom/wandoujia/api/proto/TodayDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/TodayDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TodayDetail$Builder;->build()Lcom/wandoujia/api/proto/TodayDetail;

    .line 58
    new-instance v0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/PublisherDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->build()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->s:Lcom/wandoujia/api/proto/PublisherDetail;

    .line 60
    new-instance v0, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherTimeDetail$Builder;->build()Lcom/wandoujia/api/proto/PublisherTimeDetail;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->t:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    .line 62
    new-instance v0, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/PublisherBundleDetail$Builder;->build()Lcom/wandoujia/api/proto/PublisherBundleDetail;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->u:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    .line 596
    new-instance v0, Lhhu;

    invoke-direct {v0}, Lhhu;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/model/Model;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Entity;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->v:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0, p1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    .line 108
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->datePublished:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/api/proto/Entity$Builder;->datePublished:Ljava/lang/Long;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    new-instance v2, Lcom/wandoujia/api/proto/ShareSummary$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/ShareSummary$Builder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/ShareSummary$Builder;->total_count(Ljava/lang/Long;)Lcom/wandoujia/api/proto/ShareSummary$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ShareSummary$Builder;->build()Lcom/wandoujia/api/proto/ShareSummary;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/api/proto/Entity$Builder;->share_summary:Lcom/wandoujia/api/proto/ShareSummary;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    new-instance v2, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->total_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->build()Lcom/wandoujia/api/proto/FavoriteSummary;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/api/proto/Entity$Builder;->favorite_summary:Lcom/wandoujia/api/proto/FavoriteSummary;

    .line 126
    :cond_3
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    invoke-direct {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;-><init>(Lcom/wandoujia/api/proto/Action;)V

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v3}, Lhhm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 132
    :cond_4
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    invoke-direct {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;-><init>(Lcom/wandoujia/api/proto/Action;)V

    iget-object v3, p1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v3}, Lhhm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->action_positive(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 138
    :cond_5
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Tag;

    .line 141
    iget-object v4, v0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 142
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_7
    new-instance v4, Lcom/wandoujia/api/proto/Tag$Builder;

    invoke-direct {v4, v0}, Lcom/wandoujia/api/proto/Tag$Builder;-><init>(Lcom/wandoujia/api/proto/Tag;)V

    new-instance v5, Lcom/wandoujia/api/proto/Action$Builder;

    iget-object v6, v0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    invoke-direct {v5, v6}, Lcom/wandoujia/api/proto/Action$Builder;-><init>(Lcom/wandoujia/api/proto/Action;)V

    iget-object v0, v0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v0}, Lhhm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Tag$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Tag$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Tag$Builder;->build()Lcom/wandoujia/api/proto/Tag;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->tag(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 159
    :cond_9
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-nez v0, :cond_10

    .line 160
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 176
    :cond_a
    :goto_1
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-nez v0, :cond_14

    .line 177
    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 193
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->m:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->w:Ljava/util/List;

    .line 196
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->w:Ljava/util/List;

    iget-object v2, p1, Lcom/wandoujia/api/proto/Entity;->image:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->w:Ljava/util/List;

    iget-object v2, p1, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    if-eqz v0, :cond_c

    .line 204
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v2, p1, Lcom/wandoujia/api/proto/Entity;->provider:Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    .line 207
    :cond_c
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    .line 209
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->h:Ljava/util/List;

    .line 223
    :cond_d
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 224
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->j:Ljava/util/List;

    .line 234
    :cond_e
    iput-boolean v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->e:Z

    .line 236
    new-instance v0, Lhht;

    invoke-direct {v0}, Lhht;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    .line 237
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    .line 240
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 241
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 259
    :cond_f
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 260
    return-void

    .line 161
    :cond_10
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    goto :goto_1

    .line 164
    :cond_11
    invoke-static {}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->values()[Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_12

    aget-object v4, v2, v0

    .line 165
    iget-object v5, p1, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_13

    .line 167
    iput-object v4, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 171
    :cond_12
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-nez v0, :cond_a

    .line 172
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    goto/16 :goto_1

    .line 164
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 178
    :cond_14
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eqz v0, :cond_15

    .line 179
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->template_type:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    goto/16 :goto_2

    .line 181
    :cond_15
    invoke-static {}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->values()[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    .line 182
    invoke-virtual {v4}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v5

    iget-object v6, p1, Lcom/wandoujia/api/proto/Entity;->template:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_17

    .line 184
    iput-object v4, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 188
    :cond_16
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-nez v0, :cond_b

    .line 189
    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    goto/16 :goto_2

    .line 181
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 211
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->h:Ljava/util/List;

    .line 213
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->attachment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    .line 214
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 216
    :cond_19
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 217
    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v3, v4, :cond_1a

    .line 218
    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/Model;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 226
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->j:Ljava/util/List;

    .line 227
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->channel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    .line 228
    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 229
    iput-object p0, v3, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 230
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 243
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 244
    iget-object v0, p1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Entity;

    .line 245
    new-instance v2, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v2, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 246
    iput-object p0, v2, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 248
    iget-object v0, v2, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_1d

    iget-object v0, v2, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v3, :cond_1d

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v3, :cond_1d

    .line 254
    iget-object v0, v2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    invoke-virtual {v0, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->provider(Lcom/wandoujia/api/proto/Entity;)Lcom/wandoujia/api/proto/Entity$Builder;

    iput-object p0, v2, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    iput-object v0, v2, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    .line 256
    :cond_1d
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->id_string:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->id:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->id_string:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 297
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-virtual {v0, p1}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 373
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    .line 374
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 278
    iput-object p0, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    goto :goto_0

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 281
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->icon:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->image:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->image:Ljava/util/List;

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->cover:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->cover:Ljava/util/List;

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->video:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->video:Ljava/util/List;

    goto :goto_0
.end method

.method public final h()Lcom/wandoujia/api/proto/AppDetail;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/model/Model;->p:Lcom/wandoujia/api/proto/AppDetail;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    goto :goto_0
.end method

.method public final i()Lcom/wandoujia/api/proto/VideoDetail;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/model/Model;->r:Lcom/wandoujia/api/proto/VideoDetail;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->video_detail:Lcom/wandoujia/api/proto/VideoDetail;

    goto :goto_0
.end method

.method public final j()Lcom/wandoujia/api/proto/PublisherDetail;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/model/Model;->s:Lcom/wandoujia/api/proto/PublisherDetail;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->publisher_detail:Lcom/wandoujia/api/proto/PublisherDetail;

    goto :goto_0
.end method

.method public final k()Lcom/wandoujia/api/proto/PublisherTimeDetail;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/model/Model;->t:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->publisher_time_detail:Lcom/wandoujia/api/proto/PublisherTimeDetail;

    goto :goto_0
.end method

.method public final l()Lcom/wandoujia/api/proto/ArticleDetail;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/model/Model;->q:Lcom/wandoujia/api/proto/ArticleDetail;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->article_detail:Lcom/wandoujia/api/proto/ArticleDetail;

    goto :goto_0
.end method

.method public final m()Lcom/wandoujia/api/proto/PublisherBundleDetail;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/model/Model;->u:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->publisher_bundle_detail:Lcom/wandoujia/api/proto/PublisherBundleDetail;

    goto :goto_0
.end method

.method public final n()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v2, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    .line 570
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 580
    :goto_0
    return-object v0

    .line 574
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v3, "app"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0, v2}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 580
    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->need_filter:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->need_filter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->section_auto_grid_rows:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->section_auto_grid_rows:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->m:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 618
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 619
    return-void
.end method
