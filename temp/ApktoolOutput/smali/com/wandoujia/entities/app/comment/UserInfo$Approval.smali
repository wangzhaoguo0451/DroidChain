.class final enum Lcom/wandoujia/entities/app/comment/UserInfo$Approval;
.super Ljava/lang/Enum;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/app/comment/UserInfo$Approval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

.field public static final enum UNKNOWN:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

.field public static final enum YES:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->YES:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    new-instance v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->UNKNOWN:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    sget-object v1, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->YES:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->UNKNOWN:Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->$VALUES:[Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/app/comment/UserInfo$Approval;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/app/comment/UserInfo$Approval;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->$VALUES:[Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/app/comment/UserInfo$Approval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/app/comment/UserInfo$Approval;

    return-object v0
.end method
