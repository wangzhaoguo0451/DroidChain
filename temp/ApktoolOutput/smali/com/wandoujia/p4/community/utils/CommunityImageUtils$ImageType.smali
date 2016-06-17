.class public final enum Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;
.super Ljava/lang/Enum;
.source "CommunityImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

.field public static final enum MIDDLE:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

.field public static final enum SMALL:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->SMALL:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    new-instance v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->MIDDLE:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    sget-object v1, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->SMALL:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->MIDDLE:Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->$VALUES:[Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;
    .locals 1
    .parameter

    .prologue
    .line 101
    const-class v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->$VALUES:[Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;

    return-object v0
.end method
