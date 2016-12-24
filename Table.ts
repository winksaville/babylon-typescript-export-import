export class Table extends BABYLON.Mesh{
    private _height:number;
    private _width:number;
    private _length:number;
    private _box:BABYLON.Mesh;

    constructor(name:string, scene:BABYLON.Scene, tableHeight:number, tableWidth:number= 5, tableLength:number= 5){
        //strip of constructor values and pass to the local class properties
        super(name,scene);

        //this._scene = scene;

        this._height = tableHeight;
        this._width = tableWidth;
        this._length = tableLength;

        //create the table top
        this._box = BABYLON.MeshBuilder.CreateBox("box",
                     {width: this._width, height: this._height, depth: this._length}, scene);
    }
}
