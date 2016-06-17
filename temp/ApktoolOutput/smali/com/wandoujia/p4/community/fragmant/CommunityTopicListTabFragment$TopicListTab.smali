.class final enum Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;
.super Ljava/lang/Enum;
.source "CommunityTopicListTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

.field public static final enum FEATURED:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

.field public static final enum NORMAL:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;


# instance fields
.field private final delegate:Lftq;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    const-string v1, "NORMAL"

    new-instance v2, Lftq;

    new-instance v3, Lgqj;

    const-string v4, "normal"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e022f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v4, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;

    invoke-direct {v2, v3, v4, v9}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;-><init>(Ljava/lang/String;ILftq;)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->NORMAL:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    .line 62
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    const-string v1, "FEATURED"

    new-instance v2, Lftq;

    new-instance v3, Lgqj;

    const-string v4, "feature"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e022e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-class v4, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListFragment;

    invoke-direct {v2, v3, v4, v9}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;-><init>(Ljava/lang/String;ILftq;)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->FEATURED:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->NORMAL:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->FEATURED:Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILftq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lftq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->delegate:Lftq;

    .line 70
    return-void
.end method

.method static synthetic access$800(Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;)Lftq;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->delegate:Lftq;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/fragmant/CommunityTopicListTabFragment$TopicListTab;

    return-object v0
.end method
