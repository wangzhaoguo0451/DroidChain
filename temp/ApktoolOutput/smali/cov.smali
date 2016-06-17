.class final Lcov;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcov;->a:Ljava/lang/String;

    iput p2, p0, Lcov;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcov;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcov;->a:Ljava/lang/String;

    iget v1, p0, Lcov;->b:I

    invoke-static {v1}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->fromCode(I)Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    move-result-object v1

    iget-boolean v2, p0, Lcov;->c:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;Z)V

    .line 188
    return-void
.end method
