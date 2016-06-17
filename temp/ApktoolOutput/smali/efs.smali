.class final Lefs;
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
        "Lcom/wandoujia/entities/app/AppLiteInfo;",
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
    .line 29
    iput-object p1, p0, Lefs;->a:Lcvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lefs;->a:Lcvo;

    invoke-virtual {v0, p1, p2}, Lcvo;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->setDescription(Ljava/lang/String;)V

    return-object v0
.end method
