.class public final enum Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;
.super Ljava/lang/Enum;
.source "LocalFeedManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

.field public static final enum OTHER:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

.field public static final enum TIPS_VIEW:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;


# instance fields
.field private final entryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    const-string v1, "TIPS_VIEW"

    const-string v2, "tips_view"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->TIPS_VIEW:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    .line 26
    new-instance v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->OTHER:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    sget-object v1, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->TIPS_VIEW:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->OTHER:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->$VALUES:[Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->entryName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->$VALUES:[Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->entryName:Ljava/lang/String;

    return-object v0
.end method
