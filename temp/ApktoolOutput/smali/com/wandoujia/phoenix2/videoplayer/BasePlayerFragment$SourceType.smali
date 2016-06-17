.class public final enum Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;
.super Ljava/lang/Enum;
.source "BasePlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

.field public static final enum LOCAL_FILE:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

.field public static final enum URL:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 872
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->URL:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    .line 873
    new-instance v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    const-string v1, "LOCAL_FILE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->LOCAL_FILE:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    .line 871
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->URL:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->LOCAL_FILE:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->$VALUES:[Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

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
    .line 871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;
    .locals 1
    .parameter

    .prologue
    .line 871
    const-class v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;
    .locals 1

    .prologue
    .line 871
    sget-object v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->$VALUES:[Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    invoke-virtual {v0}, [Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    return-object v0
.end method
