.class final Left;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcvy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcvy",
        "<",
        "Lcom/wandoujia/entities/video/NetVideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcvo;


# direct methods
.method constructor <init>(Lcvo;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Left;->a:Lcvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Left;->a:Lcvo;

    invoke-virtual {v0, p1, p2}, Lcvo;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo;

    iget-object v1, v0, Lcom/wandoujia/entities/video/NetVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/entities/video/NetVideoInfo;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method
