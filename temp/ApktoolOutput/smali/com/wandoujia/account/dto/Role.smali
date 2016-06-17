.class public final enum Lcom/wandoujia/account/dto/Role;
.super Ljava/lang/Enum;
.source "Role.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/dto/Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_APPDEVELOPER:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_FAVORITE:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_PLUSDEVELOPER:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_ROBOT:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_TRUSTED:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_UNTRUSTED:Lcom/wandoujia/account/dto/Role;

.field public static final enum ROLE_USER:Lcom/wandoujia/account/dto/Role;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_USER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_USER:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_APPDEVELOPER"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_APPDEVELOPER:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_PLUSDEVELOPER"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_PLUSDEVELOPER:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_TRUSTED"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_TRUSTED:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_UNTRUSTED"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_UNTRUSTED:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_ROBOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_ROBOT:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_SUBSCRIBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    new-instance v0, Lcom/wandoujia/account/dto/Role;

    const-string v1, "ROLE_FAVORITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/dto/Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_FAVORITE:Lcom/wandoujia/account/dto/Role;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/account/dto/Role;

    sget-object v1, Lcom/wandoujia/account/dto/Role;->ROLE_USER:Lcom/wandoujia/account/dto/Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/dto/Role;->ROLE_APPDEVELOPER:Lcom/wandoujia/account/dto/Role;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/dto/Role;->ROLE_PLUSDEVELOPER:Lcom/wandoujia/account/dto/Role;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/dto/Role;->ROLE_TRUSTED:Lcom/wandoujia/account/dto/Role;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/dto/Role;->ROLE_UNTRUSTED:Lcom/wandoujia/account/dto/Role;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/dto/Role;->ROLE_ROBOT:Lcom/wandoujia/account/dto/Role;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/account/dto/Role;->ROLE_FAVORITE:Lcom/wandoujia/account/dto/Role;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/dto/Role;->$VALUES:[Lcom/wandoujia/account/dto/Role;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(Ljava/lang/String;)Lcom/wandoujia/account/dto/Role;
    .locals 5
    .parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 9
    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/wandoujia/account/dto/Role;->values()[Lcom/wandoujia/account/dto/Role;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 11
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/Role;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    :goto_1
    return-object v0

    .line 10
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/Role;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/dto/Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/Role;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/dto/Role;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/dto/Role;->$VALUES:[Lcom/wandoujia/account/dto/Role;

    invoke-virtual {v0}, [Lcom/wandoujia/account/dto/Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/dto/Role;

    return-object v0
.end method
