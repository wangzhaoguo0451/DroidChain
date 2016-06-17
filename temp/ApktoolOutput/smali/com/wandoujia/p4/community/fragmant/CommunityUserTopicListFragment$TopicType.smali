.class public final enum Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;
.super Ljava/lang/Enum;
.source "CommunityUserTopicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

.field public static final enum NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

.field public static final enum PUBLISHED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

.field public static final enum REPLIED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    const-string v1, "NEWEST"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    const-string v1, "PUBLISHED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->PUBLISHED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    const-string v1, "REPLIED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->REPLIED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->NEWEST:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->PUBLISHED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->REPLIED:Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/fragmant/CommunityUserTopicListFragment$TopicType;

    return-object v0
.end method
