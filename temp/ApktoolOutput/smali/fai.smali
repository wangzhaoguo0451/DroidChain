.class public final Lfai;
.super Ljava/lang/Object;
.source "ALFunctionIconModel.java"

# interfaces
.implements Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;


# instance fields
.field public a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

.field public b:Z

.field private c:Lcom/wandoujia/mvc/Action;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    .line 20
    iput p2, p0, Lfai;->d:I

    .line 21
    invoke-static {p1}, Ld;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lfai;->b:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;->Function:Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel$Type;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/wandoujia/mvc/Action;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lfai;->c:Lcom/wandoujia/mvc/Action;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lexr;

    iget-object v1, p0, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    invoke-direct {v0, v1}, Lexr;-><init>(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;)V

    iput-object v0, p0, Lfai;->c:Lcom/wandoujia/mvc/Action;

    .line 39
    :cond_0
    iget-object v0, p0, Lfai;->c:Lcom/wandoujia/mvc/Action;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lfai;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->icons:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Icons;

    iget-object v0, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$Icons;->px256:Ljava/lang/String;

    return-object v0
.end method
