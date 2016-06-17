.class public final Lefr;
.super Ljava/lang/Object;
.source "GsonFactory.java"


# static fields
.field private static a:Lcvo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 26
    new-instance v1, Lcvv;

    invoke-direct {v1}, Lcvv;-><init>()V

    .line 27
    const-class v2, Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-static {v2}, Lczv;->get(Ljava/lang/Class;)Lczv;

    move-result-object v2

    invoke-virtual {v2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lefs;

    invoke-direct {v3, v0}, Lefs;-><init>(Lcvo;)V

    invoke-virtual {v1, v2, v3}, Lcvv;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcvv;

    .line 44
    const-class v2, Lcom/wandoujia/entities/video/NetVideoInfo;

    invoke-static {v2}, Lczv;->get(Ljava/lang/Class;)Lczv;

    move-result-object v2

    invoke-virtual {v2}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Left;

    invoke-direct {v3, v0}, Left;-><init>(Lcvo;)V

    invoke-virtual {v1, v2, v3}, Lcvv;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcvv;

    .line 57
    invoke-virtual {v1}, Lcvv;->a()Lcvo;

    move-result-object v0

    sput-object v0, Lefr;->a:Lcvo;

    .line 58
    return-void
.end method

.method public static a()Lcvo;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lefr;->a:Lcvo;

    return-object v0
.end method
